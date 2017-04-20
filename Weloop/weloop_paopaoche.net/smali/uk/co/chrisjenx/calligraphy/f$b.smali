.class Luk/co/chrisjenx/calligraphy/f$b;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/chrisjenx/calligraphy/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/view/LayoutInflater$Factory;

.field private final b:Luk/co/chrisjenx/calligraphy/f;

.field private final c:Luk/co/chrisjenx/calligraphy/c;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory;Luk/co/chrisjenx/calligraphy/f;Luk/co/chrisjenx/calligraphy/c;)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/f$b;->a:Landroid/view/LayoutInflater$Factory;

    .line 231
    iput-object p2, p0, Luk/co/chrisjenx/calligraphy/f$b;->b:Luk/co/chrisjenx/calligraphy/f;

    .line 232
    iput-object p3, p0, Luk/co/chrisjenx/calligraphy/f$b;->c:Luk/co/chrisjenx/calligraphy/c;

    .line 233
    return-void
.end method


# virtual methods
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .prologue
    .line 237
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 238
    iget-object v6, p0, Luk/co/chrisjenx/calligraphy/f$b;->c:Luk/co/chrisjenx/calligraphy/c;

    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/f$b;->b:Luk/co/chrisjenx/calligraphy/f;

    const/4 v1, 0x0

    iget-object v2, p0, Luk/co/chrisjenx/calligraphy/f$b;->a:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v2, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Luk/co/chrisjenx/calligraphy/f;->a(Luk/co/chrisjenx/calligraphy/f;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0, p2, p3}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/f$b;->c:Luk/co/chrisjenx/calligraphy/c;

    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/f$b;->a:Landroid/view/LayoutInflater$Factory;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method
