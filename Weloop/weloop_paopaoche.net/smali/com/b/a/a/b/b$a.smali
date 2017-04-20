.class Lcom/b/a/a/b/b$a;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/b/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/io/FileInputStream;

.field public b:[B

.field public c:J

.field final synthetic d:Lcom/b/a/a/b/b;


# direct methods
.method private constructor <init>(Lcom/b/a/a/b/b;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/b/a/a/b/b$a;->d:Lcom/b/a/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/b/a/a/b/b;Lcom/b/a/a/b/c;)V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/b/a/a/b/b$a;-><init>(Lcom/b/a/a/b/b;)V

    return-void
.end method
