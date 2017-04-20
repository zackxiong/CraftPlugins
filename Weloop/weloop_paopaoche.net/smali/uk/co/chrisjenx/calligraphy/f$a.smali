.class Luk/co/chrisjenx/calligraphy/f$a;
.super Luk/co/chrisjenx/calligraphy/f$c;
.source "ProGuard"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/chrisjenx/calligraphy/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final c:Luk/co/chrisjenx/calligraphy/f;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;Luk/co/chrisjenx/calligraphy/f;Luk/co/chrisjenx/calligraphy/c;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1, p3}, Luk/co/chrisjenx/calligraphy/f$c;-><init>(Landroid/view/LayoutInflater$Factory2;Luk/co/chrisjenx/calligraphy/c;)V

    .line 291
    iput-object p2, p0, Luk/co/chrisjenx/calligraphy/f$a;->c:Luk/co/chrisjenx/calligraphy/f;

    .line 292
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .prologue
    .line 296
    iget-object v6, p0, Luk/co/chrisjenx/calligraphy/f$a;->b:Luk/co/chrisjenx/calligraphy/c;

    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/f$a;->c:Luk/co/chrisjenx/calligraphy/f;

    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/f$a;->a:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Luk/co/chrisjenx/calligraphy/f;->a(Luk/co/chrisjenx/calligraphy/f;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v6, v0, p3, p4}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
