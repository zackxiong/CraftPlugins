.class Lcom/alimama/mobile/csdk/umupdate/a/b$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/mobile/csdk/umupdate/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/alimama/mobile/csdk/umupdate/a/b;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/alimama/mobile/csdk/umupdate/a/b;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alimama/mobile/csdk/umupdate/a/b;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 677
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/a/b$a;->a:Lcom/alimama/mobile/csdk/umupdate/a/b;

    .line 679
    iput-object p2, p0, Lcom/alimama/mobile/csdk/umupdate/a/b$a;->b:[Ljava/lang/Object;

    .line 680
    return-void
.end method
