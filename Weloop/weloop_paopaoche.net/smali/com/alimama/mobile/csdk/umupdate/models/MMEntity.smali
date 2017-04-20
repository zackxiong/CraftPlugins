.class public Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;
.super Lcom/alimama/mobile/csdk/umupdate/models/a;
.source "ProGuard"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static a:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Lcom/alimama/mobile/csdk/umupdate/models/f;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:I

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:J

.field public p:I

.field public q:Ljava/lang/String;

.field public r:[J

.field public s:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected t:I

.field protected u:J

.field protected v:Z

.field public w:Ljava/lang/String;

.field public x:I

.field public y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/b;

    invoke-direct {v0}, Lcom/alimama/mobile/csdk/umupdate/models/b;-><init>()V

    sput-object v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->a:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/a;-><init>(Landroid/os/Parcel;)V

    .line 45
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/f;->a:Lcom/alimama/mobile/csdk/umupdate/models/f;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:Lcom/alimama/mobile/csdk/umupdate/models/f;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->c:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->d:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->e:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->f:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->g:I

    .line 63
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->h:I

    .line 64
    const-string v0, "bigImg"

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->i:Ljava/lang/String;

    .line 68
    iput v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->j:I

    .line 73
    iput v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->k:I

    .line 78
    iput-boolean v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->m:Z

    .line 79
    iput-boolean v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->n:Z

    .line 83
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->o:J

    .line 84
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->p:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->q:Ljava/lang/String;

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->s:Ljava/util/HashMap;

    .line 97
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->t:I

    .line 101
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->u:J

    .line 105
    iput-boolean v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->v:Z

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->w:Ljava/lang/String;

    .line 108
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->x:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->y:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 123
    if-ne v0, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:Lcom/alimama/mobile/csdk/umupdate/models/f;

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->c:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->d:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->e:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->f:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->g:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->h:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->i:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->j:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->k:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->m:Z

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->n:Z

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->t:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->u:J

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->v:Z

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->o:J

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->p:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->q:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->w:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->x:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->y:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->l:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    .line 146
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->s:Ljava/util/HashMap;

    .line 147
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/alimama/mobile/csdk/umupdate/models/f;->values()[Lcom/alimama/mobile/csdk/umupdate/models/f;

    move-result-object v3

    aget-object v0, v3, v0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 133
    goto :goto_1

    :cond_2
    move v0, v2

    .line 134
    goto :goto_2

    :cond_3
    move v1, v2

    .line 137
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/alimama/mobile/csdk/umupdate/models/b;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 115
    invoke-direct {p0}, Lcom/alimama/mobile/csdk/umupdate/models/a;-><init>()V

    .line 45
    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/f;->a:Lcom/alimama/mobile/csdk/umupdate/models/f;

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:Lcom/alimama/mobile/csdk/umupdate/models/f;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->c:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->d:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->e:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->f:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->g:I

    .line 63
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->h:I

    .line 64
    const-string v0, "bigImg"

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->i:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->j:I

    .line 73
    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->k:I

    .line 78
    iput-boolean v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->m:Z

    .line 79
    iput-boolean v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->n:Z

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->o:J

    .line 84
    iput v3, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->p:I

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->q:Ljava/lang/String;

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->s:Ljava/util/HashMap;

    .line 97
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->t:I

    .line 101
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->u:J

    .line 105
    iput-boolean v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->v:Z

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->w:Ljava/lang/String;

    .line 108
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->x:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->y:Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->z:Ljava/lang/String;

    .line 117
    const/16 v0, 0x11

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->C:I

    .line 118
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    array-length v0, v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    aget-wide v0, v0, v2

    cmp-long v0, v0, v8

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    aget-wide v0, v0, v2

    .line 157
    iget-object v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    const/4 v3, 0x1

    aget-wide v2, v2, v3

    .line 158
    iget-object v4, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    .line 159
    iget-object v6, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    const/4 v7, 0x3

    aget-wide v6, v6, v7

    .line 160
    sub-long v0, v2, v0

    .line 161
    sub-long v2, v6, v4

    .line 162
    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    .line 163
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 170
    invoke-super {p0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/a;->a(Lorg/json/JSONObject;)V

    .line 172
    const-string v0, "landing_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->l:Ljava/lang/String;

    .line 173
    const-string v0, "filter"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 174
    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->m:Z

    .line 176
    const-string v0, "cache"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->k:I

    .line 178
    const-string v0, "sid_expire"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->p:I

    .line 179
    const-string v0, "expire"

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->o:J

    .line 180
    const-string v0, "landing_image"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->d:Ljava/lang/String;

    .line 181
    const-string v0, "landing_url"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->e:Ljava/lang/String;

    .line 182
    const-string v0, "new_img"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->f:Ljava/lang/String;

    .line 183
    const-string v0, "display_type"

    const-string v3, "bigImg"

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->i:Ljava/lang/String;

    .line 185
    const-string v0, "module"

    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 187
    invoke-static {v0}, Lcom/alimama/mobile/csdk/umupdate/models/f;->a(Ljava/lang/String;)Lcom/alimama/mobile/csdk/umupdate/models/f;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    sget-object v0, Lcom/alimama/mobile/csdk/umupdate/models/f;->a:Lcom/alimama/mobile/csdk/umupdate/models/f;

    :cond_0
    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:Lcom/alimama/mobile/csdk/umupdate/models/f;

    .line 190
    :cond_1
    const-string v0, "img_type"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->g:I

    .line 192
    const-string v0, "walls"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 194
    iput-boolean v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->n:Z

    .line 198
    :cond_2
    const-string v0, "opensize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 200
    :try_start_0
    const-string v0, "opensize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :cond_3
    :goto_1
    const-string v0, "dm"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_5

    .line 208
    const-string v1, "on"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->t:I

    .line 209
    const-string v1, "tm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->u:J

    .line 215
    :goto_2
    const-string v0, "new_num"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->j:I

    .line 217
    const-string v0, "landing_text"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->q:Ljava/lang/String;

    .line 219
    const-string v0, "ispreload"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->w:Ljava/lang/String;

    .line 220
    const-string v0, "preload"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->x:I

    .line 221
    const-string v0, "iscache"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->y:Ljava/lang/String;

    .line 223
    return-void

    :cond_4
    move v0, v2

    .line 174
    goto/16 :goto_0

    .line 211
    :cond_5
    iput v2, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->t:I

    .line 212
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->u:J

    goto :goto_2

    .line 202
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 233
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-super {p0, p1, p2}, Lcom/alimama/mobile/csdk/umupdate/models/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:Lcom/alimama/mobile/csdk/umupdate/models/f;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->g:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 253
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->m:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 255
    iget-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->n:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 256
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-wide v4, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->u:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    iget-boolean v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->v:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 259
    iget-wide v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->o:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->x:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->y:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->r:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 267
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->s:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 268
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;->b:Lcom/alimama/mobile/csdk/umupdate/models/f;

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/models/f;->ordinal()I

    move-result v0

    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 254
    goto :goto_1

    :cond_2
    move v0, v2

    .line 255
    goto :goto_2

    :cond_3
    move v1, v2

    .line 258
    goto :goto_3
.end method
