.class final Lcom/yf/gattlib/notification/f$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/notification/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static final a:Lcom/yf/gattlib/notification/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    new-instance v0, Lcom/yf/gattlib/notification/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yf/gattlib/notification/f;-><init>(Lcom/yf/gattlib/notification/f$1;)V

    sput-object v0, Lcom/yf/gattlib/notification/f$a;->a:Lcom/yf/gattlib/notification/f;

    return-void
.end method
