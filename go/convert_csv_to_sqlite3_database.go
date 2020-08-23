// need install go-sqlite3
// Author Ben Luo <benluo@gmail.com>
// License: GPL V3.0

package main

import (
	"bufio"
	"database/sql"
	"log"
	"os"
	"strings"

	_ "github.com/mattn/go-sqlite3"
)

func main() {
	fileName := "../TXT/AB-G_ZJFY-full-index.csv"
	f, err := os.Open(fileName)
	if err != nil {
		log.Fatalf("can not open the file, err is %+v", err)
	}
	defer f.Close()

	scanner := bufio.NewScanner(f)

	// set up database
	os.Remove("./ab-g_zjfy.db")

	db, err := sql.Open("sqlite3", "./ab-g_zjfy.db")
	if err != nil {
		log.Fatal(err)
	}
	defer db.Close()

	// if there is no g_f, it is "". If there is no yiti, y will be ""
	sqlStmt := `
	create table dict (ab_code text not null primary key, z text, j tex, f text, jz_relation text, g_code text, g_j text, g_f text, y text);
	delete from dict;
	`
	_, err = db.Exec(sqlStmt)
	if err != nil {
		log.Printf("%q: %s\n", err, sqlStmt)
		return
	}

	tx, err := db.Begin()
	if err != nil {
		log.Fatal(err)
	}

	// AB表編碼:正體字:簡體字:繁體字:簡正對應關係:G表編碼:簡體字:繁體字:異體字:一對多附註
	// not including last colume
	stmt, err := tx.Prepare("insert into dict(ab_code, z, j, f, jz_relation, g_code, g_j, g_f, y) values(?, ?, ?, ?, ?, ?, ?, ?, ?)")
	if err != nil {
		log.Fatal(err)
	}
	defer stmt.Close()

	for scanner.Scan() {
		row := [9]string{}
		tmpStrings := strings.Split(scanner.Text(), ":")
		for i := range tmpStrings {
			if i > 8 {
				break
			}
			row[i] = tmpStrings[i]
		}
		if row[3] == "佔格" {
			row[3] = ""
		}
		if row[7] == "無繁體" {
			row[7] = ""
		}
		if row[8] == "無異體" {
			row[8] = ""
		}
		_, err = stmt.Exec(row[0], row[1], row[2], row[3], row[4], row[5], row[6], row[7], row[8])
		if err != nil {
			log.Fatal(err)
		}
	}
	tx.Commit()

	if err := scanner.Err(); err != nil {
		log.Fatal(err)
	}
}
