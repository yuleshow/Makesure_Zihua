package biz.benluo.android.makesure_zihua

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import biz.benluo.android.makesure_zihua.ui.about.AboutFragment
import biz.benluo.android.makesure_zihua.ui.dictionary.DictionaryFragment
import biz.benluo.android.makesure_zihua.ui.home.HomeFragment
import kotlinx.android.synthetic.main.activity_main.*

class MainActivity : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        nav_view.setOnNavigationItemSelectedListener { item ->
            return@setOnNavigationItemSelectedListener when (item.itemId) {
                R.id.navigation_home -> {
                    loadFragment(HomeFragment())
                    true
                }
                R.id.navigation_dictionary -> {
                    loadFragment(DictionaryFragment())
                    true
                }
                R.id.navigation_about -> {
                    loadFragment(AboutFragment())
                    true
                }
                else -> false
            }
        }
    }

    private fun loadFragment(fragment: Fragment) {
        var ft = supportFragmentManager.beginTransaction()
        ft.replace(R.id.root_layout, fragment)
        ft.commit()
    }
}