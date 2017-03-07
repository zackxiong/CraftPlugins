package org.acra;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.NotificationManager;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.baidu.android.pushservice.db.LightAppTableDefine;
import org.acra.p159b.ProGuard;

/* compiled from: ProGuard */
public class CrashReportDialog extends Activity implements OnClickListener, OnDismissListener {
    String f9511a;
    AlertDialog f9512b;
    private SharedPreferences f9513c;
    private EditText f9514d;
    private EditText f9515e;

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent().getBooleanExtra("FORCE_CANCEL", false)) {
            ACRA.log.m12146a(ACRA.LOG_TAG, "Forced reports deletion.");
            m11973b();
            finish();
            return;
        }
        this.f9511a = getIntent().getStringExtra("REPORT_FILE_NAME");
        Log.d(ACRA.LOG_TAG, "Opening CrashReportDialog for " + this.f9511a);
        if (this.f9511a == null) {
            finish();
        }
        Builder builder = new Builder(this);
        int x = ACRA.getConfig().m12123x();
        if (x != 0) {
            builder.setTitle(x);
        }
        x = ACRA.getConfig().m12120u();
        if (x != 0) {
            builder.setIcon(x);
        }
        builder.setView(m11972a(bundle));
        builder.setPositiveButton(17039370, this);
        builder.setNegativeButton(17039360, this);
        m11975a();
        this.f9512b = builder.create();
        this.f9512b.setCanceledOnTouchOutside(false);
        this.f9512b.setOnDismissListener(this);
        this.f9512b.show();
    }

    private View m11972a(Bundle bundle) {
        CharSequence string;
        View linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setPadding(10, 10, 10, 10);
        linearLayout.setLayoutParams(new LayoutParams(-1, -2));
        linearLayout.setFocusable(true);
        linearLayout.setFocusableInTouchMode(true);
        View scrollView = new ScrollView(this);
        linearLayout.addView(scrollView, new LinearLayout.LayoutParams(-1, -1, 1.0f));
        View linearLayout2 = new LinearLayout(this);
        linearLayout2.setOrientation(1);
        scrollView.addView(linearLayout2);
        scrollView = new TextView(this);
        int w = ACRA.getConfig().m12122w();
        if (w != 0) {
            scrollView.setText(getText(w));
        }
        linearLayout2.addView(scrollView);
        int s = ACRA.getConfig().m12118s();
        if (s != 0) {
            View textView = new TextView(this);
            textView.setText(getText(s));
            textView.setPadding(textView.getPaddingLeft(), 10, textView.getPaddingRight(), textView.getPaddingBottom());
            linearLayout2.addView(textView, new LinearLayout.LayoutParams(-1, -2));
            this.f9514d = new EditText(this);
            this.f9514d.setLines(2);
            if (bundle != null) {
                string = bundle.getString("comment");
                if (string != null) {
                    this.f9514d.setText(string);
                }
            }
            linearLayout2.addView(this.f9514d);
        }
        s = ACRA.getConfig().m12119t();
        if (s != 0) {
            textView = new TextView(this);
            textView.setText(getText(s));
            textView.setPadding(textView.getPaddingLeft(), 10, textView.getPaddingRight(), textView.getPaddingBottom());
            linearLayout2.addView(textView);
            this.f9515e = new EditText(this);
            this.f9515e.setSingleLine();
            this.f9515e.setInputType(33);
            this.f9513c = getSharedPreferences(ACRA.getConfig().m12088E(), ACRA.getConfig().m12087D());
            string = null;
            if (bundle != null) {
                string = bundle.getString("email");
            }
            if (string != null) {
                this.f9515e.setText(string);
            } else {
                this.f9515e.setText(this.f9513c.getString(ACRA.PREF_USER_EMAIL_ADDRESS, ""));
            }
            linearLayout2.addView(this.f9515e);
        }
        return linearLayout;
    }

    protected void m11975a() {
        ((NotificationManager) getSystemService(LightAppTableDefine.DB_TABLE_NOTIFICATION)).cancel(666);
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        if (i == -1) {
            m11974c();
        } else {
            m11973b();
        }
        finish();
    }

    private void m11973b() {
        ACRA.getErrorReporter().m11996b(false);
    }

    private void m11974c() {
        Object obj;
        Object editable = this.f9514d != null ? this.f9514d.getText().toString() : "";
        if (this.f9513c == null || this.f9515e == null) {
            obj = "";
        } else {
            obj = this.f9515e.getText().toString();
            Editor edit = this.f9513c.edit();
            edit.putString(ACRA.PREF_USER_EMAIL_ADDRESS, obj);
            edit.commit();
        }
        ProGuard proGuard = new ProGuard(getApplicationContext());
        try {
            Log.d(ACRA.LOG_TAG, "Add user comment to " + this.f9511a);
            ProGuard a = proGuard.m12191a(this.f9511a);
            a.put(ReportField.USER_COMMENT, editable);
            a.put(ReportField.USER_EMAIL, obj);
            proGuard.m12192a(a, this.f9511a);
        } catch (Throwable e) {
            Log.w(ACRA.LOG_TAG, "User comment not added: ", e);
        }
        Log.v(ACRA.LOG_TAG, "About to start SenderWorker from CrashReportDialog");
        ACRA.getErrorReporter().m11989a(false, true);
        int v = ACRA.getConfig().m12121v();
        if (v != 0) {
            org.acra.p165e.ProGuard.m12184a(getApplicationContext(), v, 1);
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (!(this.f9514d == null || this.f9514d.getText() == null)) {
            bundle.putString("comment", this.f9514d.getText().toString());
        }
        if (this.f9515e != null && this.f9515e.getText() != null) {
            bundle.putString("email", this.f9515e.getText().toString());
        }
    }

    public void onDismiss(DialogInterface dialogInterface) {
        finish();
    }
}
