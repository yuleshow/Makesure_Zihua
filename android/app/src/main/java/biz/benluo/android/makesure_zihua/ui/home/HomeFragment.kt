package biz.benluo.android.makesure_zihua.ui.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import biz.benluo.android.makesure_zihua.R
import kotlinx.android.synthetic.main.fragment_home.*
import kotlinx.android.synthetic.main.fragment_home.view.*

class HomeFragment : Fragment() {

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        val v = inflater.inflate(R.layout.fragment_home, container, false)
        v.web_view.loadUrl("http://www.yuleshow.com/?p=9088")
//        this.web_view.loadUrl("http://www.yuleshow.com/?p=9088")
        return v
    }
}