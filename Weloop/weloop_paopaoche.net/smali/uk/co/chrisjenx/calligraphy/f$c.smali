.class Luk/co/chrisjenx/calligraphy/f$c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/chrisjenx/calligraphy/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field protected final a:Landroid/view/LayoutInflater$Factory2;

.field protected final b:Luk/co/chrisjenx/calligraphy/c;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;Luk/co/chrisjenx/calligraphy/c;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Luk/co/chrisjenx/calligraphy/f$c;->a:Landroid/view/LayoutInflater$Factory2;

    .line 262
    iput-object p2, p0, Luk/co/chrisjenx/calligraphy/f$c;->b:Luk/co/chrisjenx/calligraphy/c;

    .line 263
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/f$c;->b:Luk/co/chrisjenx/calligraphy/c;

    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/f$c;->a:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Luk/co/chrisjenx/calligraphy/f$c;->b:Luk/co/chrisjenx/calligraphy/c;

    iget-object v1, p0, Luk/co/chrisjenx/calligraphy/f$c;->a:Landroid/view/LayoutInflater$Factory2;

    invoke-interface {v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Luk/co/chrisjenx/calligraphy/c;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
