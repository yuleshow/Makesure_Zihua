package biz.benluo.android.makesure_zihua

import androidx.room.Dao
import androidx.room.Query

@Dao
interface DictDao {
    @Query("SELECT * from dict ORDER BY ab_code ASC")
    fun getAllCharaters(): List<Dict>

    @Query("SELECT z from dict WHERE j LIKE :j ")
    fun getZfromJ(j:String): List<String>
}