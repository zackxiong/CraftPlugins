package com.yf.smart.weloopx.activitys;

import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.MediaStore.Images.Media;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.yf.smart.weloopx.android.ui.activities.ImageCropActivity;
import com.yf.smart.weloopx.android.ui.activities.ProGuard;
import com.yf.smart.weloopx.android.ui.widget.CircularImageView;
import com.yf.smart.weloopx.data.models.UserData;
import com.yf.smart.weloopx.dist.R;
import java.io.ByteArrayOutputStream;
import java.io.File;

/* compiled from: ProGuard */
public class RegisterPhoneActivity1 extends ProGuard implements OnClickListener {
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558665)
    Button f6952a;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558666)
    Button f6953b;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558663)
    CircularImageView f6954c;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558664)
    EditText f6955d;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558781)
    Button f6956e;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558667)
    Button f6957f;
    @com.p038b.p039a.p056g.p057a.ProGuard(a = 2131558766)
    TextView f6958g;
    private final String f6959h;
    private int f6960i;
    private String f6961j;
    private String f6962k;
    private boolean f6963l;
    private boolean f6964m;
    private boolean f6965n;
    private com.yf.smart.weloopx.view.ProGuard f6966o;
    private com.yf.smart.weloopx.p145g.ProGuard f6967p;
    private UserData f6968q;
    private String f6969r;
    private String f6970s;
    private boolean f6971t;
    private View f6972u;
    private File f6973w;
    private OnClickListener f6974x;

    public RegisterPhoneActivity1() {
        this.f6959h = "RegisterPhoneActivity1";
        this.f6960i = 0;
        this.f6961j = "";
        this.f6962k = "IS_WEIXIN_LOGIN";
        this.f6963l = false;
        this.f6964m = true;
        this.f6965n = false;
        this.f6968q = new UserData();
        this.f6969r = "";
        this.f6970s = "";
        this.f6971t = false;
        this.f6974x = new ProGuard(this);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(R.layout.activity_register_phone_activity1);
        com.p038b.p039a.ProGuard.m4086a(this);
        m8844c();
        m8794d(getString(R.string.upload_profile_info));
        m8855a();
        m8845d();
    }

    private void m8844c() {
        int i = 0;
        com.yf.smart.weloopx.app.ProGuard.m10657a().m10658a(this);
        this.f6967p = new com.yf.smart.weloopx.p145g.ProGuard();
        this.f6961j = Environment.getExternalStorageDirectory() + "/temp.jpg";
        this.f6973w = new File(this.f6961j);
        if (this.f6973w.exists()) {
            this.f6973w.delete();
        }
        Object c = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c();
        if (!TextUtils.isEmpty(c)) {
            this.f6968q = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(c);
        }
        Bundle extras = getIntent().getExtras();
        if (extras != null) {
            this.f6971t = extras.getBoolean("IS_INIT");
            this.f6964m = extras.getBoolean("set_target", true);
            this.f6963l = extras.getBoolean(this.f6962k, false);
            this.f6969r = extras.getString("NICK_NAME");
            CharSequence string = extras.getString("SEX");
            if (!TextUtils.isEmpty(string)) {
                if (!"1".equals(string)) {
                    i = 1;
                }
                this.f6960i = i;
                this.f6968q.setSex(this.f6960i);
            }
            this.f6970s = extras.getString("HEAD_PIC_URL");
            m8842b(this.f6970s);
        }
        this.f6960i = this.f6968q.getSex();
        com.yf.gattlib.p117p.ProGuard.m8292a("RegisterPhoneActivity1 initData SEX = " + this.f6960i);
    }

    public void m8855a() {
        this.f6972u = LayoutInflater.from(this).inflate(R.layout.activity_register_phone_activity1, null);
        this.f6966o = new com.yf.smart.weloopx.view.ProGuard(this, this.f6974x);
        this.f6956e.setVisibility(0);
        this.f6956e.setOnClickListener(this);
        this.f6954c.setOnClickListener(this);
        this.f6952a.setOnClickListener(this);
        this.f6957f.setOnClickListener(this);
        this.f6953b.setOnClickListener(this);
        this.f6958g.setText(!this.f6964m ? R.string.edit_user_info : R.string.set_title);
        this.f6955d.setText(this.f6969r);
        if (!TextUtils.isEmpty(this.f6969r)) {
            this.f6955d.setSelection(this.f6955d.getText().length());
        }
        com.yf.gattlib.p117p.ProGuard.m8292a("RegisterPhoneActivity1 \u521d\u59cb\u5316\u7684initView sex = " + this.f6960i);
        m8836a(this.f6960i);
        if (!TextUtils.isEmpty(this.f6970s)) {
            this.f6970s = this.f6970s.substring(0, this.f6970s.length() - 1) + "96";
            com.yf.gattlib.p117p.ProGuard.m8292a("RegisterPhoneActivity1 \u5fae\u4fe1\u4f20\u9012\u8fc7\u6765\u7684\u56fe\u7247\u4fe1\u606f = " + this.f6970s);
        }
    }

    private void m8845d() {
        com.p038b.p039a.ProGuard a = com.yf.smart.weloopx.p143f.ProGuard.m11184a();
        CharSequence nickname = this.f6968q.getNickname();
        if (!TextUtils.isEmpty(this.f6968q.getNickname())) {
            this.f6955d.setText(nickname);
            this.f6955d.setSelection(this.f6955d.getText().length());
        }
        if (!TextUtils.isEmpty(this.f6968q.getHeadPicAddress())) {
            a.m3884a(this.f6954c, this.f6968q.getHeadPicAddress());
        }
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.btnHeadPic:
                this.f6966o.showAtLocation(this.f6972u, 81, 0, 0);
            case R.id.btnMale:
                m8836a(0);
                this.f6960i = 0;
            case R.id.btnFemale:
                m8836a(1);
                this.f6960i = 1;
            case R.id.btn_next:
                m8859b();
            case R.id.at_btn_left:
                if (TextUtils.isEmpty(this.f6968q.getHeadPicAddress()) || TextUtils.isEmpty(this.f6955d.getText().toString().trim()) || this.f6960i == 2) {
                    m8858a((String) getResources().getText(R.string.user_info_is_not_complete));
                } else {
                    finish();
                }
            default:
        }
    }

    private void m8836a(int i) {
        runOnUiThread(new ProGuard(this, i));
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        switch (i) {
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_android_focusable /*1*/:
                this.f6973w = new File(this.f6961j);
                m8857a(Uri.fromFile(this.f6973w));
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingStart /*2*/:
                if (intent != null) {
                    m8857a(intent.getData());
                }
            case uk.co.chrisjenx.calligraphy.ProGuard.styleable.View_paddingEnd /*3*/:
                if (intent != null) {
                    m8837a(intent);
                }
            default:
        }
    }

    public void m8857a(Uri uri) {
        com.yf.gattlib.p117p.ProGuard.m8292a("RegisterPhoneActivity1 log file path = " + uri.getPath());
        if (TextUtils.isEmpty(uri.getAuthority())) {
            Intent intent = new Intent(this, ImageCropActivity.class);
            intent.putExtra("path", uri.getPath());
            com.yf.gattlib.p117p.ProGuard.m8292a("RegisterPhoneActivity1 \u8d70\u8fd9\u91cc2---\u62cd\u7167\u9009\u62e9\u56fe\u7247 path = " + uri.getPath());
            if (new File(uri.getPath()).exists()) {
                startActivityForResult(intent, 3);
                return;
            }
            return;
        }
        Cursor query = getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
        if (query != null) {
            query.moveToFirst();
            String string = query.getString(query.getColumnIndex("_data"));
            com.yf.gattlib.p117p.ProGuard.m8292a("RegisterPhoneActivity1 \u8d70\u8fd9\u91cc1---\u76f8\u518c\u9009\u62e9\u56fe\u7247 path = " + string);
            Intent intent2 = new Intent(this, ImageCropActivity.class);
            intent2.putExtra("path", string);
            startActivityForResult(intent2, 3);
        }
    }

    private void m8837a(Intent intent) {
        this.f6965n = true;
        Bitmap decodeFile = BitmapFactory.decodeFile(intent.getStringExtra("path"));
        if (decodeFile != null) {
            decodeFile.compress(CompressFormat.JPEG, 100, new ByteArrayOutputStream());
            CircularImageView circularImageView = this.f6954c;
            if (circularImageView != null) {
                circularImageView.setImageBitmap(this.f6967p.m11297a(decodeFile));
                m8856a(decodeFile);
            }
        }
    }

    private void m8848e() {
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", Uri.fromFile(this.f6973w));
        startActivityForResult(intent, 1);
        if (this.f6966o != null) {
            this.f6966o.dismiss();
        }
    }

    private void m8852h() {
        Intent intent = new Intent("android.intent.action.PICK", null);
        intent.setDataAndType(Media.EXTERNAL_CONTENT_URI, "image/*");
        startActivityForResult(intent, 2);
        if (this.f6966o != null) {
            this.f6966o.dismiss();
        }
    }

    public void m8859b() {
        if (m8797g()) {
            com.yf.gattlib.p117p.ProGuard.m8292a("RegisterPhoneActivity1 \u63d0\u4ea4\u8d44\u6599 isRegister = " + this.f6964m + ", isSetHeadPic = " + this.f6965n);
            if (this.f6964m && !this.f6965n) {
                m8858a((String) getResources().getText(R.string.head_pic_null));
                return;
            } else if (this.f6960i == 2) {
                m8858a((String) getResources().getText(R.string.sex_null));
                return;
            } else {
                String trim = this.f6955d.getText().toString().trim();
                if (TextUtils.isEmpty(trim)) {
                    m8792b(R.string.nickname_null);
                    return;
                }
                String c = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10780c();
                com.yf.smart.weloopx.android.ui.ProGuard.m10544a(this.v, getFragmentManager(), "RegisterPhoneActivity1");
                this.f6968q = com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10785e(c);
                this.f6968q.setSex(this.f6960i);
                this.f6968q.setNickname(trim);
                this.f6968q.setAccessToken(c);
                if (this.f6965n) {
                    this.f6968q.setHeadPic(this.f6973w);
                } else {
                    this.f6968q.setHeadPic(null);
                }
                com.yf.smart.weloopx.p140b.ProGuard.m10759a().m10765a(this.f6968q, new ProGuard(this, trim, c));
                return;
            }
        }
        m8792b(R.string.net_unuse);
    }

    private void m8854i() {
        com.yf.smart.weloopx.android.ui.ProGuard.m10543a(this.v);
    }

    public void m8858a(String str) {
        m8795e(str);
    }

    public void m8856a(Bitmap bitmap) {
        new ProGuard(this, bitmap).start();
    }

    private void m8842b(String str) {
        if (!TextUtils.isEmpty(str)) {
            new com.p038b.p039a.ProGuard().m3959a(str, this.f6961j, true, false, new ProGuard(this));
        }
    }
}
