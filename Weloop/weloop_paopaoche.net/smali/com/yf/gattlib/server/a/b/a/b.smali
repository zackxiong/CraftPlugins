.class Lcom/yf/gattlib/server/a/b/a/b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lcom/yf/gattlib/server/a/b/a/a;


# direct methods
.method constructor <init>(Lcom/yf/gattlib/server/a/b/a/a;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/yf/gattlib/server/a/b/a/b;->a:Lcom/yf/gattlib/server/a/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 146
    const-string v0, "anti disturb end"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/b;->a:Lcom/yf/gattlib/server/a/b/a/a;

    const-string v1, "anti disturb end"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/server/a/b/a/a;->a(Lcom/yf/gattlib/server/a/b/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    const-string v0, "anti disturb begin"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/yf/gattlib/server/a/b/a/b;->a:Lcom/yf/gattlib/server/a/b/a/a;

    const-string v1, "anti disturb begin"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yf/gattlib/server/a/b/a/a;->b(Lcom/yf/gattlib/server/a/b/a/a;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
