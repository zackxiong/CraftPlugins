.class public Lcom/yf/smart/weloopx/data/n;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ProGuard"


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 19
    const-string v0, "WeLoop.db"

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 14
    const-string v0, "WeLoopDBHelper"

    iput-object v0, p0, Lcom/yf/smart/weloopx/data/n;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;I)I
    .locals 1

    .prologue
    .line 64
    packed-switch p2, :pswitch_data_0

    .line 134
    :goto_0
    add-int/lit8 v0, p2, 0x1

    return v0

    .line 66
    :pswitch_0
    new-instance v0, Lcom/yf/smart/weloopx/data/c$m;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$m;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$m;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 70
    :pswitch_1
    new-instance v0, Lcom/yf/smart/weloopx/data/c$l;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$l;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$l;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 74
    :pswitch_2
    new-instance v0, Lcom/yf/smart/weloopx/data/c$b;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$b;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 78
    :pswitch_3
    new-instance v0, Lcom/yf/smart/weloopx/data/c$p;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$p;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$p;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    new-instance v0, Lcom/yf/smart/weloopx/data/c$j;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$j;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 83
    :pswitch_4
    new-instance v0, Lcom/yf/smart/weloopx/data/c$p;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$p;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$p;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 87
    :pswitch_5
    new-instance v0, Lcom/yf/smart/weloopx/data/c$j;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$j;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    new-instance v0, Lcom/yf/smart/weloopx/data/c$p;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$p;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$p;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 92
    :pswitch_6
    new-instance v0, Lcom/yf/smart/weloopx/data/c$p;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$p;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$p;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 96
    :pswitch_7
    new-instance v0, Lcom/yf/smart/weloopx/data/c$d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 100
    :pswitch_8
    new-instance v0, Lcom/yf/smart/weloopx/data/c$d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$d;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 104
    :pswitch_9
    new-instance v0, Lcom/yf/smart/weloopx/data/c$y;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$y;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$y;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 105
    new-instance v0, Lcom/yf/smart/weloopx/data/c$w;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$w;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$w;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 109
    :pswitch_a
    new-instance v0, Lcom/yf/smart/weloopx/data/c$p;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$p;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$p;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 113
    :pswitch_b
    new-instance v0, Lcom/yf/smart/weloopx/data/c$l;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$l;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$l;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 117
    :pswitch_c
    new-instance v0, Lcom/yf/smart/weloopx/data/c$t;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$t;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$t;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 121
    :pswitch_d
    new-instance v0, Lcom/yf/smart/weloopx/data/c$u;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$u;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$u;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 125
    :pswitch_e
    new-instance v0, Lcom/yf/smart/weloopx/data/c$f;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    new-instance v0, Lcom/yf/smart/weloopx/data/c$g;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$g;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 129
    :pswitch_f
    new-instance v0, Lcom/yf/smart/weloopx/data/c$x;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$x;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$x;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    goto/16 :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/yf/smart/weloopx/data/c$n;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$n;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$n;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 25
    new-instance v0, Lcom/yf/smart/weloopx/data/c$z;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$z;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$z;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 26
    new-instance v0, Lcom/yf/smart/weloopx/data/c$q;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$q;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$q;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 27
    new-instance v0, Lcom/yf/smart/weloopx/data/c$o;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$o;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$o;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 28
    new-instance v0, Lcom/yf/smart/weloopx/data/c$i;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$i;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$i;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 29
    new-instance v0, Lcom/yf/smart/weloopx/data/c$a;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 30
    new-instance v0, Lcom/yf/smart/weloopx/data/c$h;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$h;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$h;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 31
    new-instance v0, Lcom/yf/smart/weloopx/data/c$k;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$k;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$k;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 32
    new-instance v0, Lcom/yf/smart/weloopx/data/c$b;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$b;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 33
    new-instance v0, Lcom/yf/smart/weloopx/data/c$aa;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$aa;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$aa;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 34
    new-instance v0, Lcom/yf/smart/weloopx/data/c$y;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$y;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$y;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    new-instance v0, Lcom/yf/smart/weloopx/data/c$v;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$v;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$v;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    new-instance v0, Lcom/yf/smart/weloopx/data/c$e;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$e;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 37
    new-instance v0, Lcom/yf/smart/weloopx/data/c$r;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$r;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$r;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 38
    new-instance v0, Lcom/yf/smart/weloopx/data/c$c;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$c;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 39
    new-instance v0, Lcom/yf/smart/weloopx/data/c$s;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$s;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$s;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 40
    new-instance v0, Lcom/yf/smart/weloopx/data/c$m;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$m;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$m;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    new-instance v0, Lcom/yf/smart/weloopx/data/c$l;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$l;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$l;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 42
    new-instance v0, Lcom/yf/smart/weloopx/data/c$p;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$p;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$p;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 43
    new-instance v0, Lcom/yf/smart/weloopx/data/c$j;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$j;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$j;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 44
    new-instance v0, Lcom/yf/smart/weloopx/data/c$d;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$d;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$d;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    new-instance v0, Lcom/yf/smart/weloopx/data/c$w;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$w;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$w;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    new-instance v0, Lcom/yf/smart/weloopx/data/c$t;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$t;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$t;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 47
    new-instance v0, Lcom/yf/smart/weloopx/data/c$u;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$u;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$u;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 48
    new-instance v0, Lcom/yf/smart/weloopx/data/c$f;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$f;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 49
    new-instance v0, Lcom/yf/smart/weloopx/data/c$g;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$g;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$g;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    new-instance v0, Lcom/yf/smart/weloopx/data/c$x;

    invoke-direct {v0}, Lcom/yf/smart/weloopx/data/c$x;-><init>()V

    invoke-virtual {v0, p1}, Lcom/yf/smart/weloopx/data/c$x;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeLoopDBHelper Database  onUpgrade oldVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yf/gattlib/p/g;->a(Ljava/lang/String;)V

    .line 57
    :goto_0
    if-ge p2, p3, :cond_0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/yf/smart/weloopx/data/n;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result p2

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method
