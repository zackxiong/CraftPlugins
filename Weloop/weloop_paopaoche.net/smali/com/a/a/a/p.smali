.class public interface abstract Lcom/a/a/a/p;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/a/a/a/o;

.field public static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/a/c;

    invoke-direct {v0}, Lcom/a/a/a/c;-><init>()V

    sput-object v0, Lcom/a/a/a/p;->a:Lcom/a/a/a/o;

    const-string v0, "<?xml version=\"1.0\" encoding=\"\""

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x28

    sput v0, Lcom/a/a/a/p;->b:I

    return-void
.end method


# virtual methods
.method public abstract toString()Ljava/lang/String;
.end method
