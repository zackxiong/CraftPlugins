.class Lcom/a/a/a/v$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/v$a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/a/a/a/v$a$a;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/a/v$a;->a:Lcom/a/a/a/v$a$a;

    return-void
.end method

.method constructor <init>(Lcom/a/a/a/v$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/a/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/v$a;->a:Lcom/a/a/a/v$a$a;

    iget-object v0, v0, Lcom/a/a/a/v$a$a;->a:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/a/a/a/v$a;->a:Lcom/a/a/a/v$a$a;

    iget-object v1, v1, Lcom/a/a/a/v$a$a;->b:Lcom/a/a/a/v$a$a;

    iput-object v1, p0, Lcom/a/a/a/v$a;->a:Lcom/a/a/a/v$a$a;

    return-object v0
.end method

.method a(Ljava/lang/Boolean;)V
    .locals 2

    new-instance v0, Lcom/a/a/a/v$a$a;

    iget-object v1, p0, Lcom/a/a/a/v$a;->a:Lcom/a/a/a/v$a$a;

    invoke-direct {v0, p1, v1}, Lcom/a/a/a/v$a$a;-><init>(Ljava/lang/Boolean;Lcom/a/a/a/v$a$a;)V

    iput-object v0, p0, Lcom/a/a/a/v$a;->a:Lcom/a/a/a/v$a$a;

    return-void
.end method
