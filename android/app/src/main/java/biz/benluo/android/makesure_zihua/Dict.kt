package biz.benluo.android.makesure_zihua

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "dict")
data class Dict(
    @PrimaryKey val ab_code: String,
    val z: String,
    val j: String,
    val f: String,
    val jz_relation: String,
    val g_code: String,
    val g_j: String,
    val g_f: String,
    val y: String
)