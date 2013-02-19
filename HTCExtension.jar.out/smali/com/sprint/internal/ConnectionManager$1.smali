.class Lcom/sprint/internal/ConnectionManager$1;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/internal/ConnectionManager;->requestAdminConnection(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/internal/ConnectionManager;

.field final synthetic val$mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sprint/internal/ConnectionManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    iput-object p2, p0, Lcom/sprint/internal/ConnectionManager$1;->val$mHandler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkCDMA_FOTA_Network(Landroid/net/ConnectivityManager;)I
    .locals 7
    .parameter "cm"

    .prologue
    .line 1130
    const/4 v0, 0x0

    .line 1132
    .local v0, INIT_DONE:I
    if-nez p1, :cond_0

    .line 1133
    iget-object v4, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    #getter for: Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sprint/internal/ConnectionManager;->access$000(Lcom/sprint/internal/ConnectionManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 1135
    .restart local p1
    :cond_0
    if-eqz p1, :cond_1

    .line 1137
    const/4 v1, 0x0

    .line 1138
    .local v1, info:Landroid/net/NetworkInfo;
    const/16 v4, 0xa

    invoke-virtual {p1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1139
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1140
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    .line 1146
    .local v2, subtype:I
    packed-switch v2, :pswitch_data_0

    .line 1188
    :pswitch_0
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "other:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #subtype:I
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkCDMA_FOTA_Network:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    return v0

    .line 1149
    .restart local v1       #info:Landroid/net/NetworkInfo;
    .restart local v2       #subtype:I
    :pswitch_1
    const/4 v0, 0x7

    .line 1150
    goto :goto_0

    .line 1152
    :pswitch_2
    const/4 v0, 0x4

    .line 1153
    goto :goto_0

    .line 1155
    :pswitch_3
    const/4 v0, 0x5

    .line 1156
    goto :goto_0

    .line 1158
    :pswitch_4
    const/4 v0, 0x6

    .line 1159
    goto :goto_0

    .line 1161
    :pswitch_5
    const/16 v0, 0xc

    .line 1162
    goto :goto_0

    .line 1165
    :pswitch_6
    if-nez v1, :cond_3

    const-string v3, ""

    .line 1166
    .local v3, tempAPN:Ljava/lang/String;
    :goto_1
    const-string v4, "ota"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "OTA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1167
    :cond_2
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "already connect apn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    const/16 v0, 0xd

    goto :goto_0

    .line 1165
    .end local v3           #tempAPN:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1170
    .restart local v3       #tempAPN:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FAIL_AUTH, apn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    const/4 v0, -0x2

    goto :goto_0

    .line 1177
    .end local v3           #tempAPN:Ljava/lang/String;
    :pswitch_7
    if-nez v1, :cond_6

    const-string v3, ""

    .line 1178
    .restart local v3       #tempAPN:Ljava/lang/String;
    :goto_2
    const-string v4, "ota"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "OTA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1179
    :cond_5
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "already connect apn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 1177
    .end local v3           #tempAPN:Ljava/lang/String;
    :cond_6
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1182
    .restart local v3       #tempAPN:Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FAIL_AUTH, apn:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/4 v0, -0x2

    goto/16 :goto_0

    .line 1194
    .end local v2           #subtype:I
    .end local v3           #tempAPN:Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mobile network info null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1146
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private checkNotCDMANetwork(Landroid/net/ConnectivityManager;)I
    .locals 8
    .parameter "cm"

    .prologue
    .line 1066
    const/4 v0, 0x0

    .line 1068
    .local v0, INIT_DONE:I
    if-nez p1, :cond_0

    .line 1069
    iget-object v5, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    #getter for: Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sprint/internal/ConnectionManager;->access$000(Lcom/sprint/internal/ConnectionManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 1071
    .restart local p1
    :cond_0
    if-eqz p1, :cond_2

    .line 1081
    const/4 v1, 0x0

    .line 1082
    .local v1, info:Landroid/net/NetworkInfo;
    const/4 v5, 0x6

    invoke-virtual {p1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1083
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1084
    const/16 v0, 0x16

    .line 1088
    :cond_1
    const/4 v4, 0x0

    .line 1089
    .local v4, tm:Landroid/telephony/TelephonyManager;
    const/4 v2, 0x1

    .line 1090
    .local v2, phoneType:I
    iget-object v5, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    #getter for: Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/sprint/internal/ConnectionManager;->access$000(Lcom/sprint/internal/ConnectionManager;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1092
    .restart local v4       #tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v2

    .line 1093
    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    .line 1094
    const/4 v1, 0x0

    .line 1095
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1096
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1097
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 1098
    .local v3, subtype:I
    packed-switch v3, :pswitch_data_0

    .line 1118
    :pswitch_0
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "other GSM network type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    .end local v1           #info:Landroid/net/NetworkInfo;
    .end local v2           #phoneType:I
    .end local v3           #subtype:I
    .end local v4           #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkNotCDMANetwork:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    return v0

    .line 1101
    .restart local v1       #info:Landroid/net/NetworkInfo;
    .restart local v2       #phoneType:I
    .restart local v3       #subtype:I
    .restart local v4       #tm:Landroid/telephony/TelephonyManager;
    :pswitch_1
    const/4 v0, 0x1

    .line 1102
    goto :goto_0

    .line 1104
    :pswitch_2
    const/4 v0, 0x2

    .line 1106
    :pswitch_3
    const/4 v0, 0x3

    .line 1107
    goto :goto_0

    .line 1109
    :pswitch_4
    const/16 v0, 0x8

    .line 1110
    goto :goto_0

    .line 1112
    :pswitch_5
    const/16 v0, 0x9

    .line 1113
    goto :goto_0

    .line 1115
    :pswitch_6
    const/16 v0, 0xa

    .line 1116
    goto :goto_0

    .line 1098
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isConnected(I)Z
    .locals 1
    .parameter "network"

    .prologue
    .line 1057
    if-lez p1, :cond_0

    .line 1059
    const/4 v0, 0x1

    .line 1061
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNeedtoRoute(I)Z
    .locals 1
    .parameter "network"

    .prologue
    .line 1049
    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    .line 1050
    :cond_0
    const/4 v0, 0x1

    .line 1052
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1203
    const/4 v1, 0x0

    .line 1205
    .local v1, INIT_DONE:I
    const/4 v2, 0x0

    .line 1206
    .local v2, cm:Landroid/net/ConnectivityManager;
    const/4 v5, 0x0

    .line 1208
    .local v5, info:Landroid/net/NetworkInfo;
    const/4 v6, 0x0

    .line 1212
    .local v6, retryTime:I
    if-nez v2, :cond_0

    .line 1213
    iget-object v9, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    #getter for: Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sprint/internal/ConnectionManager;->access$000(Lcom/sprint/internal/ConnectionManager;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cm:Landroid/net/ConnectivityManager;
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1215
    .restart local v2       #cm:Landroid/net/ConnectivityManager;
    :cond_0
    if-eqz v2, :cond_8

    .line 1216
    const/4 v8, -0x1

    .line 1218
    .local v8, rslt:I
    const/4 v9, 0x0

    :try_start_0
    const-string v10, "enableFOTA"

    invoke-virtual {v2, v9, v10}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v8

    .line 1219
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startUsingNetworkFeature FEATURE_ENABLE_FOTA return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1226
    :goto_0
    if-nez v8, :cond_6

    .line 1229
    invoke-direct {p0, v2}, Lcom/sprint/internal/ConnectionManager$1;->checkNotCDMANetwork(Landroid/net/ConnectivityManager;)I

    move-result v1

    .line 1230
    if-nez v1, :cond_1

    .line 1231
    invoke-direct {p0, v2}, Lcom/sprint/internal/ConnectionManager$1;->checkCDMA_FOTA_Network(Landroid/net/ConnectivityManager;)I

    move-result v1

    .line 1235
    :cond_1
    invoke-direct {p0, v1}, Lcom/sprint/internal/ConnectionManager$1;->isConnected(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1236
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "APN_ALREADY_ACTIVE but not network found"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    const/4 v5, 0x0

    .line 1238
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1239
    if-eqz v5, :cond_5

    .line 1240
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isConnected:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isConnectedOrConnecting:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getExtraInfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSubtype:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSubtypeName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getReason:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getType:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getTypeName:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    .end local v8           #rslt:I
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INIT_DONE 1st:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    invoke-direct {p0, v1}, Lcom/sprint/internal/ConnectionManager$1;->isConnected(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1285
    :cond_3
    :goto_2
    const/16 v9, 0xa

    if-le v6, v9, :cond_9

    .line 1286
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "requestAdminConnection timeout"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_4
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "INIT_DONE 2nd:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    iget-object v9, p0, Lcom/sprint/internal/ConnectionManager$1;->val$mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1431
    return-void

    .line 1220
    .restart local v8       #rslt:I
    :catch_0
    move-exception v3

    .line 1221
    .local v3, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "startUsingNetworkFeature Exception"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1223
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 1224
    .local v4, err:Ljava/lang/Error;
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "startUsingNetworkFeature Error"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1250
    .end local v4           #err:Ljava/lang/Error;
    :cond_5
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "network info null"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1254
    :cond_6
    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    .line 1257
    const/4 v9, 0x2

    if-ne v8, v9, :cond_7

    .line 1258
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "startUsingNetworkFeature return APN_TYPE_NOT_AVAILABLE"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const/4 v1, -0x1

    goto/16 :goto_1

    .line 1260
    :cond_7
    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    .line 1261
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "startUsingNetworkFeature return APN_REQUEST_FAILED"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/4 v1, -0x1

    goto/16 :goto_1

    .line 1275
    .end local v8           #rslt:I
    :cond_8
    invoke-static {}, Lcom/sprint/internal/ConnectionManager;->access$100()Ljava/lang/String;

    move-result-object v9

    const-string v10, "cm is null"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1291
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 1292
    if-nez v2, :cond_a

    .line 1293
    :try_start_1
    iget-object v9, p0, Lcom/sprint/internal/ConnectionManager$1;->this$0:Lcom/sprint/internal/ConnectionManager;

    #getter for: Lcom/sprint/internal/ConnectionManager;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/sprint/internal/ConnectionManager;->access$000(Lcom/sprint/internal/ConnectionManager;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v2, v0

    .line 1295
    :cond_a
    if-eqz v2, :cond_3

    .line 1297
    invoke-direct {p0, v2}, Lcom/sprint/internal/ConnectionManager$1;->checkNotCDMANetwork(Landroid/net/ConnectivityManager;)I

    move-result v7

    .line 1298
    .local v7, retryType:I
    invoke-direct {p0, v7}, Lcom/sprint/internal/ConnectionManager$1;->isConnected(I)Z

    move-result v9

    if-nez v9, :cond_b

    .line 1299
    invoke-direct {p0, v2}, Lcom/sprint/internal/ConnectionManager$1;->checkCDMA_FOTA_Network(Landroid/net/ConnectivityManager;)I

    move-result v1

    .line 1305
    :goto_3
    invoke-direct {p0, v1}, Lcom/sprint/internal/ConnectionManager$1;->isConnected(I)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1308
    const-wide/16 v9, 0xbb8

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_2

    .line 1312
    .end local v7           #retryType:I
    :catch_2
    move-exception v3

    .line 1314
    .restart local v3       #e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1303
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v7       #retryType:I
    :cond_b
    move v1, v7

    goto :goto_3
.end method
