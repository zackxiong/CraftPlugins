.class public final enum Lcom/handmark/pulltorefresh/library/e$a;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/handmark/pulltorefresh/library/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/handmark/pulltorefresh/library/e$a;

.field public static final enum b:Lcom/handmark/pulltorefresh/library/e$a;

.field private static final synthetic c:[Lcom/handmark/pulltorefresh/library/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1364
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$a;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$a;->a:Lcom/handmark/pulltorefresh/library/e$a;

    .line 1370
    new-instance v0, Lcom/handmark/pulltorefresh/library/e$a;

    const-string v1, "FLIP"

    invoke-direct {v0, v1, v3}, Lcom/handmark/pulltorefresh/library/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$a;->b:Lcom/handmark/pulltorefresh/library/e$a;

    .line 1359
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/handmark/pulltorefresh/library/e$a;

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$a;->a:Lcom/handmark/pulltorefresh/library/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/handmark/pulltorefresh/library/e$a;->b:Lcom/handmark/pulltorefresh/library/e$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/handmark/pulltorefresh/library/e$a;->c:[Lcom/handmark/pulltorefresh/library/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1359
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()Lcom/handmark/pulltorefresh/library/e$a;
    .locals 1

    .prologue
    .line 1373
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$a;->a:Lcom/handmark/pulltorefresh/library/e$a;

    return-object v0
.end method

.method static a(I)Lcom/handmark/pulltorefresh/library/e$a;
    .locals 1

    .prologue
    .line 1386
    packed-switch p0, :pswitch_data_0

    .line 1389
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$a;->a:Lcom/handmark/pulltorefresh/library/e$a;

    .line 1391
    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$a;->b:Lcom/handmark/pulltorefresh/library/e$a;

    goto :goto_0

    .line 1386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/e$a;
    .locals 1

    .prologue
    .line 1359
    const-class v0, Lcom/handmark/pulltorefresh/library/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/e$a;

    return-object v0
.end method

.method public static values()[Lcom/handmark/pulltorefresh/library/e$a;
    .locals 1

    .prologue
    .line 1359
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$a;->c:[Lcom/handmark/pulltorefresh/library/e$a;

    invoke-virtual {v0}, [Lcom/handmark/pulltorefresh/library/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/handmark/pulltorefresh/library/e$a;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$h;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/a/d;
    .locals 2

    .prologue
    .line 1397
    sget-object v0, Lcom/handmark/pulltorefresh/library/e$1;->d:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/e$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1400
    new-instance v0, Lcom/handmark/pulltorefresh/library/a/e;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/a/e;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$h;Landroid/content/res/TypedArray;)V

    .line 1403
    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/handmark/pulltorefresh/library/a/b;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/a/b;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/e$b;Lcom/handmark/pulltorefresh/library/e$h;Landroid/content/res/TypedArray;)V

    goto :goto_0

    .line 1397
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
