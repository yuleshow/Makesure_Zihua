package biz.benluo.android.makesure_zihua.ui

import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.room.Room
import biz.benluo.android.makesure_zihua.DictDao
import biz.benluo.android.makesure_zihua.DictionaryRoomDatabase
import biz.benluo.android.makesure_zihua.R
import kotlinx.android.synthetic.main.fragment_dictionary.view.*

class DictionaryFragment : Fragment() {
//    private lateinit var db: DictionaryRoomDatabase
//    private lateinit var dictDao: DictDao

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        val v = inflater.inflate(R.layout.fragment_dictionary, container, false)
//        v.eTz.addTextChangedListener(object : TextWatcher {
//            override fun afterTextChanged(s: Editable) {}
//            override fun beforeTextChanged(s: CharSequence, start: Int, count: Int, after: Int) {}
//            override fun onTextChanged(s: CharSequence, start: Int, before: Int, count: Int) {
//                val db = DictionaryRoomDatabase.getDatabase(v.context)
//                val dictDao = db.dictDao()
//                val dicts = dictDao.getDictFromZ(s.toString())
//                v.eTj.setText(dicts[0].j)
//                v.eTf.setText(dicts[0].f)
//                v.eTy.setText(dicts[0].y)
//            }
//        })
        v.eTj.addTextChangedListener(object : TextWatcher {
            override fun afterTextChanged(s: Editable) {}
            override fun beforeTextChanged(s: CharSequence, start: Int, count: Int, after: Int) {}
            override fun onTextChanged(s: CharSequence, start: Int, before: Int, count: Int) {
                val db = DictionaryRoomDatabase.getDatabase(v.context)
                val dictDao = db.dictDao()
                val dicts = dictDao.getDictFromJ(s.toString())
                v.eTz.setText(dicts[0].z)
                v.eTf.setText(dicts[0].f)
                v.eTy.setText(dicts[0].y)
            }
        })
//        v.eTf.addTextChangedListener(object : TextWatcher {
//            override fun afterTextChanged(s: Editable) {}
//            override fun beforeTextChanged(s: CharSequence, start: Int, count: Int, after: Int) {}
//            override fun onTextChanged(s: CharSequence, start: Int, before: Int, count: Int) {
//                val db = DictionaryRoomDatabase.getDatabase(v.context)
//                val dictDao = db.dictDao()
//                val dicts = dictDao.getDictFromF(s.toString())
//                v.eTz.setText(dicts[0].z)
//                v.eTj.setText(dicts[0].j)
//                v.eTy.setText(dicts[0].y)
//            }
//        })
//        v.eTy.addTextChangedListener(object : TextWatcher {
//            override fun afterTextChanged(s: Editable) {}
//            override fun beforeTextChanged(s: CharSequence, start: Int, count: Int, after: Int) {}
//            override fun onTextChanged(s: CharSequence, start: Int, before: Int, count: Int) {
//                val db = DictionaryRoomDatabase.getDatabase(v.context)
//                val dictDao = db.dictDao()
//                val dicts = dictDao.getDictFromY(s.toString())
//                v.eTz.setText(dicts[0].z)
//                v.eTj.setText(dicts[0].j)
//                v.eTf.setText(dicts[0].f)
//            }
//        })
        return v
    }
}
