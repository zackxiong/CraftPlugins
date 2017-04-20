.class public final Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;
.super Lcom/yf/lib/notification/views/YFRemoteViews2$Action;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yf/lib/notification/views/YFRemoteViews2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReflectionAction"
.end annotation


# instance fields
.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/Object;

.field final synthetic e:Lcom/yf/lib/notification/views/YFRemoteViews2;


# direct methods
.method constructor <init>(Lcom/yf/lib/notification/views/YFRemoteViews2;Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->e:Lcom/yf/lib/notification/views/YFRemoteViews2;

    invoke-direct {p0}, Lcom/yf/lib/notification/views/YFRemoteViews2$Action;-><init>()V

    .line 1084
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->a:I

    .line 1085
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->b:Ljava/lang/String;

    .line 1086
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->c:I

    .line 1095
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->c:I

    packed-switch v0, :pswitch_data_0

    .line 1147
    :cond_0
    :goto_0
    return-void

    .line 1097
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1100
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto :goto_0

    .line 1103
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto :goto_0

    .line 1106
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto :goto_0

    .line 1109
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto :goto_0

    .line 1112
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto :goto_0

    .line 1115
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto :goto_0

    .line 1118
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto :goto_0

    .line 1121
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto :goto_0

    .line 1124
    :pswitch_9
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto :goto_0

    .line 1127
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto :goto_0

    .line 1132
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1137
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1140
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1141
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    goto/16 :goto_0

    .line 1095
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1150
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1151
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1152
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1153
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1162
    iget v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->c:I

    packed-switch v0, :pswitch_data_0

    .line 1217
    :cond_0
    :goto_0
    return-void

    .line 1164
    :pswitch_0
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    .line 1167
    :pswitch_1
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 1170
    :pswitch_2
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1173
    :pswitch_3
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1176
    :pswitch_4
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    .line 1179
    :pswitch_5
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_0

    .line 1182
    :pswitch_6
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_0

    .line 1185
    :pswitch_7
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1188
    :pswitch_8
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 1191
    :pswitch_9
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1194
    :pswitch_a
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1195
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_2
    move v1, v2

    .line 1194
    goto :goto_2

    .line 1200
    :pswitch_b
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_3
    move v1, v2

    .line 1200
    goto :goto_3

    .line 1206
    :pswitch_c
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 1209
    :pswitch_d
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1211
    iget-object v0, p0, Lcom/yf/lib/notification/views/YFRemoteViews2$ReflectionAction;->d:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    :cond_4
    move v1, v2

    .line 1209
    goto :goto_4

    .line 1162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
