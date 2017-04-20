.class Lcom/yf/smart/weloopx/test/ui/d;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/yf/smart/weloopx/test/ui/c;


# direct methods
.method constructor <init>(Lcom/yf/smart/weloopx/test/ui/c;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/yf/smart/weloopx/test/ui/d;->b:Lcom/yf/smart/weloopx/test/ui/c;

    iput-object p2, p0, Lcom/yf/smart/weloopx/test/ui/d;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yf/smart/weloopx/test/ui/d;->b:Lcom/yf/smart/weloopx/test/ui/c;

    iget-object v0, v0, Lcom/yf/smart/weloopx/test/ui/c;->a:Lcom/yf/smart/weloopx/test/ui/b;

    iget-object v0, v0, Lcom/yf/smart/weloopx/test/ui/b;->a:Lcom/yf/smart/weloopx/test/ui/a;

    iget-object v0, v0, Lcom/yf/smart/weloopx/test/ui/a;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yf/smart/weloopx/test/ui/d;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    return-void
.end method
