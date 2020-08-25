package biz.benluo.android.makesure_zihua.ui

import android.os.Bundle
import android.text.Editable
import android.text.TextWatcher
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import biz.benluo.android.makesure_zihua.R
import kotlinx.android.synthetic.main.fragment_dictionary.view.*

class DictionaryFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        val v = inflater.inflate(R.layout.fragment_dictionary, container, false)
        v.eTz.addTextChangedListener(object : TextWatcher {
            override fun afterTextChanged(s: Editable) {}
            override fun beforeTextChanged(s: CharSequence, start: Int, count: Int, after: Int) {}
            override fun onTextChanged(s: CharSequence, start: Int, before: Int, count: Int) {
                v.eTj.setText(s)
                v.eTf.setText(s)
                v.eTy.setText(s)
            }
        })
        return v
    }
}