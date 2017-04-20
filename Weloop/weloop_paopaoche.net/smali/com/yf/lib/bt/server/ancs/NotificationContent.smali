.class public final Lcom/yf/lib/bt/server/ancs/NotificationContent;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/yf/lib/bt/server/ancs/NotificationContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:B

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/yf/lib/bt/server/ancs/a;

    invoke-direct {v0}, Lcom/yf/lib/bt/server/ancs/a;-><init>()V

    sput-object v0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->c:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->d:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->e:Ljava/lang/String;

    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->c:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->d:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->e:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->a:I

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->b:B

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->c:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->d:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->e:Ljava/lang/String;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/yf/lib/bt/server/ancs/a;)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/yf/lib/bt/server/ancs/NotificationContent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 19
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/yf/lib/bt/server/ancs/NotificationContent;

    if-nez v1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return v0

    .line 22
    :cond_1
    check-cast p1, Lcom/yf/lib/bt/server/ancs/NotificationContent;

    .line 24
    iget v1, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->a:I

    iget v2, p1, Lcom/yf/lib/bt/server/ancs/NotificationContent;->a:I

    if-ne v1, v2, :cond_0

    .line 27
    iget-byte v1, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->b:B

    iget-byte v2, p1, Lcom/yf/lib/bt/server/ancs/NotificationContent;->b:B

    if-ne v1, v2, :cond_0

    .line 31
    iget-object v1, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/yf/lib/bt/server/ancs/NotificationContent;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/yf/lib/bt/server/ancs/NotificationContent;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    iget-object v1, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/yf/lib/bt/server/ancs/NotificationContent;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", categoryId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-byte v2, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->b:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-byte v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->b:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 73
    iget-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/yf/lib/bt/server/ancs/NotificationContent;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    return-void
.end method
