.class Lcom/a/a/a/v$a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/Boolean;

.field final b:Lcom/a/a/a/v$a$a;


# direct methods
.method constructor <init>(Ljava/lang/Boolean;Lcom/a/a/a/v$a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a/v$a$a;->a:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/a/a/a/v$a$a;->b:Lcom/a/a/a/v$a$a;

    return-void
.end method
