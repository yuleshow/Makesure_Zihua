package biz.benluo.android.makesure_zihua.ui.dictionary

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel

class DictionaryViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is dictionary Fragment"
    }
    val text: LiveData<String> = _text
}