.class public final Lcom/yf/smart/weloopx/f/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/b/a/a;

.field private static b:Lcom/b/a/a;


# direct methods
.method public static a()Lcom/b/a/a;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/yf/smart/weloopx/f/a;->a:Lcom/b/a/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    const v3, 0x7f0201aa

    const v2, 0x7f02009f

    .line 17
    new-instance v0, Lcom/b/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yf/smart/weloopx/f/a;->a:Lcom/b/a/a;

    .line 18
    invoke-virtual {v0, v2}, Lcom/b/a/a;->a(I)Lcom/b/a/a;

    .line 19
    invoke-virtual {v0, v2}, Lcom/b/a/a;->b(I)Lcom/b/a/a;

    .line 20
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/b/a/a;->a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/a;

    .line 23
    new-instance v0, Lcom/b/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/b/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yf/smart/weloopx/f/a;->b:Lcom/b/a/a;

    .line 24
    invoke-virtual {v0, v3}, Lcom/b/a/a;->a(I)Lcom/b/a/a;

    .line 25
    invoke-virtual {v0, v3}, Lcom/b/a/a;->b(I)Lcom/b/a/a;

    .line 26
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/b/a/a;->a(Landroid/graphics/Bitmap$Config;)Lcom/b/a/a;

    .line 27
    return-void
.end method

.method public static b()Lcom/b/a/a;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/yf/smart/weloopx/f/a;->b:Lcom/b/a/a;

    return-object v0
.end method
