.class public Landroid/support/v4/app/ag;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ag$a;,
        Landroid/support/v4/app/ag$e;,
        Landroid/support/v4/app/ag$c;,
        Landroid/support/v4/app/ag$b;,
        Landroid/support/v4/app/ag$o;,
        Landroid/support/v4/app/ag$d;,
        Landroid/support/v4/app/ag$h;,
        Landroid/support/v4/app/ag$g;,
        Landroid/support/v4/app/ag$n;,
        Landroid/support/v4/app/ag$m;,
        Landroid/support/v4/app/ag$l;,
        Landroid/support/v4/app/ag$k;,
        Landroid/support/v4/app/ag$j;,
        Landroid/support/v4/app/ag$i;,
        Landroid/support/v4/app/ag$f;
    }
.end annotation


# static fields
.field private static final a:Landroid/support/v4/app/ag$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 815
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 816
    new-instance v0, Landroid/support/v4/app/ag$h;

    invoke-direct {v0}, Landroid/support/v4/app/ag$h;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ag$f;

    .line 832
    :goto_0
    return-void

    .line 817
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 818
    new-instance v0, Landroid/support/v4/app/ag$g;

    invoke-direct {v0}, Landroid/support/v4/app/ag$g;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ag$f;

    goto :goto_0

    .line 819
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    .line 820
    new-instance v0, Landroid/support/v4/app/ag$n;

    invoke-direct {v0}, Landroid/support/v4/app/ag$n;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ag$f;

    goto :goto_0

    .line 821
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 822
    new-instance v0, Landroid/support/v4/app/ag$m;

    invoke-direct {v0}, Landroid/support/v4/app/ag$m;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ag$f;

    goto :goto_0

    .line 823
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    .line 824
    new-instance v0, Landroid/support/v4/app/ag$l;

    invoke-direct {v0}, Landroid/support/v4/app/ag$l;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ag$f;

    goto :goto_0

    .line 825
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_5

    .line 826
    new-instance v0, Landroid/support/v4/app/ag$k;

    invoke-direct {v0}, Landroid/support/v4/app/ag$k;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ag$f;

    goto :goto_0

    .line 827
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_6

    .line 828
    new-instance v0, Landroid/support/v4/app/ag$j;

    invoke-direct {v0}, Landroid/support/v4/app/ag$j;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ag$f;

    goto :goto_0

    .line 830
    :cond_6
    new-instance v0, Landroid/support/v4/app/ag$i;

    invoke-direct {v0}, Landroid/support/v4/app/ag$i;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ag$f;

    goto :goto_0
.end method

.method static synthetic a()Landroid/support/v4/app/ag$f;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ag$f;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/app/ae;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0, p1}, Landroid/support/v4/app/ag;->b(Landroid/support/v4/app/ae;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/af;Landroid/support/v4/app/ag$o;)V
    .locals 0

    .prologue
    .line 41
    invoke-static {p0, p1}, Landroid/support/v4/app/ag;->b(Landroid/support/v4/app/af;Landroid/support/v4/app/ag$o;)V

    return-void
.end method

.method private static b(Landroid/support/v4/app/ae;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ae;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ag$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 779
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ag$a;

    .line 780
    invoke-interface {p0, v0}, Landroid/support/v4/app/ae;->a(Landroid/support/v4/app/ak$a;)V

    goto :goto_0

    .line 782
    :cond_0
    return-void
.end method

.method private static b(Landroid/support/v4/app/af;Landroid/support/v4/app/ag$o;)V
    .locals 7

    .prologue
    .line 786
    if-eqz p1, :cond_0

    .line 787
    instance-of v0, p1, Landroid/support/v4/app/ag$c;

    if-eqz v0, :cond_1

    .line 788
    check-cast p1, Landroid/support/v4/app/ag$c;

    .line 789
    iget-object v0, p1, Landroid/support/v4/app/ag$c;->d:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/ag$c;->f:Z

    iget-object v2, p1, Landroid/support/v4/app/ag$c;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ag$c;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/af;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 794
    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/ag$e;

    if-eqz v0, :cond_2

    .line 795
    check-cast p1, Landroid/support/v4/app/ag$e;

    .line 796
    iget-object v0, p1, Landroid/support/v4/app/ag$e;->d:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/ag$e;->f:Z

    iget-object v2, p1, Landroid/support/v4/app/ag$e;->e:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/ag$e;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/af;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 801
    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/ag$b;

    if-eqz v0, :cond_0

    .line 802
    check-cast p1, Landroid/support/v4/app/ag$b;

    .line 803
    iget-object v1, p1, Landroid/support/v4/app/ag$b;->d:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/ag$b;->f:Z

    iget-object v3, p1, Landroid/support/v4/app/ag$b;->e:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/ag$b;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/ag$b;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/ag$b;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/ao;->a(Landroid/support/v4/app/af;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method
