.class public Lcom/alimama/mobile/csdk/umupdate/a/g$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alimama/mobile/csdk/umupdate/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    const-string v0, "x"

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->a:Ljava/lang/String;

    .line 713
    const-string v0, "unknown"

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->b:Ljava/lang/String;

    .line 714
    const-string v0, "cell"

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->c:Ljava/lang/String;

    .line 715
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/a/g$a;->d:Ljava/lang/String;

    return-void
.end method
