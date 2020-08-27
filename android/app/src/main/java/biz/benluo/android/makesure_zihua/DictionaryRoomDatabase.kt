package biz.benluo.android.makesure_zihua

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import androidx.room.migration.Migration
import androidx.sqlite.db.SupportSQLiteDatabase

const val EXISTING_VERSION = 1

@Database(entities = [Dict::class], version = EXISTING_VERSION + 1, exportSchema = true)
abstract class DictionaryRoomDatabase : RoomDatabase() {
    abstract fun dictDao(): DictDao

    companion object {
        @Volatile
        private var INSTANCE: DictionaryRoomDatabase? = null

        fun getDatabase(context: Context): DictionaryRoomDatabase {
            return INSTANCE ?: synchronized(this) {
                val instance = Room.databaseBuilder(
                    context.applicationContext,
                    DictionaryRoomDatabase::class.java,
                    "dictionary.db"
                )
                    .createFromAsset("databases/dictionary.db")
                    .addMigrations(object : Migration(EXISTING_VERSION, EXISTING_VERSION + 1) {
                        override fun migrate(database: SupportSQLiteDatabase) {
                            // no need do anything
                        }
                    })
                    .build()
                INSTANCE = instance
                instance
            }
        }
    }
}