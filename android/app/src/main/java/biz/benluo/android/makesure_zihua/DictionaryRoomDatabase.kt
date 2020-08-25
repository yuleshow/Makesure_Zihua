package biz.benluo.android.makesure_zihua

import android.content.Context
import androidx.room.Database
import androidx.room.Room
import androidx.room.RoomDatabase
import kotlinx.coroutines.CoroutineScope

@Database(entities = [Dict::class], version = 1, exportSchema = true)
abstract class DictionaryRoomDatabase : RoomDatabase() {
    abstract fun dictDao(): DictDao

    companion object {
        @Volatile
        private var INSTANCE: DictionaryRoomDatabase? = null

        fun getDatabase(context: Context, scope: CoroutineScope): DictionaryRoomDatabase {
            return INSTANCE ?: synchronized(this) {
                val instance = Room.databaseBuilder(
                    context.applicationContext,
                    DictionaryRoomDatabase::class.java,
                    "DictionaryDB"
                )
                    .createFromAsset("databases/dictionary.db")
                   // .fallbackToDestructiveMigration()
                    //.addCallback(DictionaryRoomDatabaseCallback(scope))
                    .build()
                INSTANCE = instance
                instance
            }
        }

        private class DictionaryRoomDatabaseCallback(private val scope: CoroutineScope) :
            RoomDatabase.Callback() {

        }
    }
}