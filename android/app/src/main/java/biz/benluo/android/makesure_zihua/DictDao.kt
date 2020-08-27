package biz.benluo.android.makesure_zihua

import androidx.room.Dao
import androidx.room.Query

@Dao
interface DictDao {
    @Query("SELECT * from dict ORDER BY ab_code ASC")
    fun getAllCharaters(): List<Dict>

    @Query("SELECT * from dict WHERE j LIKE :j ")
    fun getDictFromJ(j:String): List<Dict>

    @Query("SELECT * from dict WHERE z LIKE :z ")
    fun getDictFromZ(z:String): List<Dict>

    @Query("SELECT * from dict WHERE f LIKE :f ")
    fun getDictFromF(f:String): List<Dict>

    @Query("SELECT * from dict WHERE y LIKE :y ")
    fun getDictFromY(y:String): List<Dict>
}