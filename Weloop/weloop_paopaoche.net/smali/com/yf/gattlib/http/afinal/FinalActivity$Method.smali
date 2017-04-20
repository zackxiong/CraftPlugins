.class public final enum Lcom/yf/gattlib/http/afinal/FinalActivity$Method;
.super Ljava/lang/Enum;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/gattlib/http/afinal/FinalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Method"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yf/gattlib/http/afinal/FinalActivity$Method;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

.field public static final enum Click:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

.field public static final enum ItemClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

.field public static final enum LongClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

.field public static final enum itemLongClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    const-string v1, "Click"

    invoke-direct {v0, v1, v2}, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->Click:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    const-string v1, "LongClick"

    invoke-direct {v0, v1, v3}, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->LongClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    const-string v1, "ItemClick"

    invoke-direct {v0, v1, v4}, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->ItemClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    new-instance v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    const-string v1, "itemLongClick"

    invoke-direct {v0, v1, v5}, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->itemLongClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    .line 131
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    sget-object v1, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->Click:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->LongClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->ItemClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->itemLongClick:Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->$VALUES:[Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

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
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yf/gattlib/http/afinal/FinalActivity$Method;
    .locals 1

    .prologue
    .line 131
    const-class v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    return-object v0
.end method

.method public static values()[Lcom/yf/gattlib/http/afinal/FinalActivity$Method;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->$VALUES:[Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    invoke-virtual {v0}, [Lcom/yf/gattlib/http/afinal/FinalActivity$Method;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yf/gattlib/http/afinal/FinalActivity$Method;

    return-object v0
.end method
