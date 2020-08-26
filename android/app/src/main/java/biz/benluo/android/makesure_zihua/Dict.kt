package biz.benluo.android.makesure_zihua

import androidx.room.ColumnInfo
import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "dict")
data class Dict(
    @PrimaryKey var ab_code: String,
    var z: String,
    var j: String?,
    var f: String?,
    var jz_relation: String?,
    var g_code: String?,
    var g_j: String?,
    var g_f: String?,
    var y: String?
)