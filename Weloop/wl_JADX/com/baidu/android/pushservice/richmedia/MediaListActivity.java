package com.baidu.android.pushservice.richmedia;

import android.app.Activity;
import android.app.NotificationManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.baidu.android.pushservice.C0192a;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import com.baidu.android.pushservice.richmedia.C0347n.C0346a;
import com.baidu.android.pushservice.util.C0374f;
import com.baidu.android.pushservice.util.PushDatabase;
import com.baidu.android.pushservice.util.PushDatabase.C0360g;
import com.baidu.frontia.p075a.p077b.p078a.C0385a;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class MediaListActivity extends Activity {
    private static String f3409r;
    ArrayList<HashMap<String, Object>> f3410a;
    NotificationManager f3411b;
    private ListView f3412c;
    private int f3413d;
    private int f3414e;
    private int f3415f;
    private int f3416g;
    private int f3417h;
    private int f3418i;
    private int f3419j;
    private int f3420k;
    private LinearLayout f3421l;
    private RemoteViews f3422m;
    private int f3423n;
    private int f3424o;
    private int f3425p;
    private int f3426q;
    private final OnItemClickListener f3427s;
    private final OnItemLongClickListener f3428t;

    /* renamed from: com.baidu.android.pushservice.richmedia.MediaListActivity.a */
    public class C0332a extends BaseAdapter {
        final /* synthetic */ MediaListActivity f3406a;
        private final Context f3407b;
        private final ArrayList<HashMap<String, Object>> f3408c;

        public C0332a(MediaListActivity mediaListActivity, Context context, ArrayList<HashMap<String, Object>> arrayList) {
            this.f3406a = mediaListActivity;
            this.f3407b = context;
            this.f3408c = arrayList;
        }

        public int getCount() {
            return this.f3408c.size();
        }

        public Object getItem(int i) {
            return (this.f3408c == null || i >= this.f3408c.size()) ? null : this.f3408c.get(i);
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public View getView(int i, View view, ViewGroup viewGroup) {
            View inflate = LayoutInflater.from(this.f3407b.getApplicationContext()).inflate(this.f3406a.f3414e, null);
            inflate.setBackgroundColor(-7829368);
            ImageView imageView = (ImageView) inflate.findViewById(this.f3406a.f3416g);
            TextView textView = (TextView) inflate.findViewById(this.f3406a.f3417h);
            TextView textView2 = (TextView) inflate.findViewById(this.f3406a.f3418i);
            TextView textView3 = (TextView) inflate.findViewById(this.f3406a.f3419j);
            if (!(this.f3408c == null || i >= this.f3408c.size() || this.f3408c.get(i) == null)) {
                if (textView != null) {
                    try {
                        textView.setText(((HashMap) this.f3408c.get(i)).get("title").toString());
                    } catch (Exception e) {
                        if (C0192a.m4341b()) {
                            C0385a.m5311b("MediaListActivity", "getView E: " + e);
                        }
                    }
                }
                if (textView2 != null) {
                    textView2.setText(((HashMap) this.f3408c.get(i)).get("fromtext").toString());
                }
                if (textView3 != null) {
                    textView3.setText(((HashMap) this.f3408c.get(i)).get("timetext").toString());
                }
                if (imageView != null) {
                    imageView.setImageDrawable((Drawable) ((HashMap) this.f3408c.get(i)).get("img"));
                }
            }
            return inflate;
        }
    }

    static {
        f3409r = "downloadUrl";
    }

    public MediaListActivity() {
        this.f3421l = null;
        this.f3427s = new C0336d(this);
        this.f3428t = new C0337e(this);
    }

    private void m5108a(String str, String str2, String str3) {
        Uri parse = Uri.parse(str);
        String path = parse.getPath();
        String str4 = new String();
        if (path.length() > 0) {
            str4 = path.substring(0, path.lastIndexOf(47));
        }
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "baidu/pushservice/files" + "/" + parse.getAuthority() + "/" + str4);
        if (C0192a.m4341b()) {
            C0385a.m5311b("MediaListActivity", "<<< download url " + parse.toString());
        }
        C0347n a = C0349o.m5145a(C0346a.REQ_TYPE_GET_ZIP, parse.toString());
        a.f3462b = file.getAbsolutePath();
        a.f3463c = str2;
        a.f3464d = str3;
        new C0334b(this, new C0340h(this), a).start();
    }

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f3413d = getResources().getIdentifier("bpush_media_list", "layout", getPackageName());
        requestWindowFeature(1);
        if (this.f3413d != 0) {
            setContentView(this.f3413d);
            Resources resources = getResources();
            String packageName = getPackageName();
            this.f3414e = resources.getIdentifier("bpush_media_list_item", "layout", packageName);
            this.f3415f = resources.getIdentifier("bpush_type_listview", "id", packageName);
            this.f3416g = resources.getIdentifier("bpush_media_list_img", "id", packageName);
            this.f3417h = resources.getIdentifier("bpush_media_list_title", "id", packageName);
            this.f3418i = resources.getIdentifier("bpush_media_list_from_text", "id", packageName);
            this.f3419j = resources.getIdentifier("bpush_media_list_time_text", "id", packageName);
            this.f3420k = resources.getIdentifier("bpush_media_none_layout", "id", packageName);
            this.f3421l = (LinearLayout) findViewById(this.f3420k);
            this.f3412c = (ListView) findViewById(this.f3415f);
            Button button = (Button) findViewById(resources.getIdentifier("bpush_media_list_return_btn", "id", packageName));
            button.setClickable(true);
            button.setOnClickListener(new C0335c(this));
            int identifier = getResources().getIdentifier("bpush_download_progress", "layout", getPackageName());
            if (identifier != 0) {
                this.f3422m = new RemoteViews(getPackageName(), identifier);
                this.f3423n = getResources().getIdentifier("bpush_downLoad_progress", "id", getPackageName());
                this.f3424o = getResources().getIdentifier("bpush_progress_percent", "id", getPackageName());
                this.f3425p = getResources().getIdentifier("bpush_progress_text", "id", getPackageName());
                this.f3426q = getResources().getIdentifier("bpush_downLoad_icon", "id", getPackageName());
            }
            this.f3412c.setOnItemClickListener(this.f3427s);
            this.f3412c.setDividerHeight(0);
            this.f3412c.setOnItemLongClickListener(this.f3428t);
        }
        this.f3411b = (NotificationManager) getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION);
    }

    public void onResume() {
        super.onResume();
        if (this.f3413d != 0) {
            String[] strArr = new String[]{"img", "title", "fromtext", "timetext"};
            this.f3410a = new ArrayList();
            List selectFileDownloadingInfo = PushDatabase.selectFileDownloadingInfo(this);
            if (selectFileDownloadingInfo == null || selectFileDownloadingInfo.isEmpty()) {
                this.f3421l.setVisibility(0);
                this.f3412c.setVisibility(8);
                return;
            }
            this.f3421l.setVisibility(8);
            this.f3412c.setVisibility(0);
            this.f3412c.setItemsCanFocus(true);
            PackageManager packageManager = getPackageManager();
            for (int i = 0; i < selectFileDownloadingInfo.size(); i++) {
                HashMap hashMap = new HashMap();
                try {
                    ApplicationInfo applicationInfo = packageManager.getApplicationInfo(((C0360g) selectFileDownloadingInfo.get(i)).f3536a, 0);
                    hashMap.put(strArr[0], packageManager.getApplicationIcon(applicationInfo));
                    hashMap.put(strArr[1], ((C0360g) selectFileDownloadingInfo.get(i)).f3538c);
                    hashMap.put(strArr[2], "\u6765\u81ea\uff1a" + packageManager.getApplicationLabel(applicationInfo));
                    hashMap.put(strArr[3], C0374f.m5178a(((C0360g) selectFileDownloadingInfo.get(i)).f3545j));
                    hashMap.put(f3409r, ((C0360g) selectFileDownloadingInfo.get(i)).f3537b);
                    this.f3410a.add(hashMap);
                } catch (NameNotFoundException e) {
                    C0385a.m5312c("MediaListActivity", "Media item package NOT found: " + ((C0360g) selectFileDownloadingInfo.get(i)).f3536a);
                }
            }
            this.f3412c.setAdapter(new C0332a(this, this, this.f3410a));
        }
    }
}
