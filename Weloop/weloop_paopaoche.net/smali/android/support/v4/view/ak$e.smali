.class Landroid/support/v4/view/ak$e;
.super Landroid/support/v4/view/ak$d;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# static fields
.field static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1129
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/view/ak$e;->b:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 1127
    invoke-direct {p0}, Landroid/support/v4/view/ak$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/support/v4/view/a;)V
    .locals 1

    .prologue
    .line 1153
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v4/view/ap;->a(Landroid/view/View;Ljava/lang/Object;)V

    .line 1155
    return-void

    .line 1153
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/view/a;->a()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1132
    invoke-static {p1, p2}, Landroid/support/v4/view/ap;->a(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 1

    .prologue
    .line 1136
    invoke-static {p1, p2}, Landroid/support/v4/view/ap;->b(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public j(Landroid/view/View;)Landroid/support/v4/view/be;
    .locals 2

    .prologue
    .line 1182
    iget-object v0, p0, Landroid/support/v4/view/ak$e;->a:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 1183
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ak$e;->a:Ljava/util/WeakHashMap;

    .line 1186
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ak$e;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/be;

    .line 1187
    if-nez v0, :cond_1

    .line 1188
    new-instance v0, Landroid/support/v4/view/be;

    invoke-direct {v0, p1}, Landroid/support/v4/view/be;-><init>(Landroid/view/View;)V

    .line 1189
    iget-object v1, p0, Landroid/support/v4/view/ak$e;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    :cond_1
    return-object v0
.end method
