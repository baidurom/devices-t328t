.class Lcom/htc/util/contacts/TMOClient$2;
.super Landroid/content/BroadcastReceiver;
.source "TMOClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/util/contacts/TMOClient;->initBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/util/contacts/TMOClient;


# direct methods
.method constructor <init>(Lcom/htc/util/contacts/TMOClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/htc/util/contacts/TMOClient$2;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1082
    const-string v9, "TMOClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Receive broadcast intent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1085
    const-string v9, "state"

    const/4 v10, 0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1086
    .local v6, serviceState:I
    const-string v9, "roaming"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1087
    .local v3, isRoaming:Z
    const-string v9, "TMOClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "serviceState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isRoaming: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    if-nez v6, :cond_2

    .line 1089
    if-eqz v3, :cond_1

    .line 1090
    const/4 v9, 0x2

    invoke-static {v9}, Lcom/htc/util/contacts/TMOClient;->access$502(I)I

    .line 1098
    :goto_0
    :try_start_0
    const-string v9, "com.android.htccontacts"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 1099
    .local v5, peopleAppsContext:Landroid/content/Context;
    const-string v9, "MyCommunityPreferences"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1100
    .local v7, sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1101
    .local v8, spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "MyCommunityNetworkState"

    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->access$500()I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1102
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    .end local v3           #isRoaming:Z
    .end local v5           #peopleAppsContext:Landroid/content/Context;
    .end local v6           #serviceState:I
    .end local v7           #sp:Landroid/content/SharedPreferences;
    .end local v8           #spEditor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_1
    const-string v9, "TMOClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mNetworkState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->access$500()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mAutoSyncSetting: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->access$600()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mLastSyncState: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->access$700()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v9, p0, Lcom/htc/util/contacts/TMOClient$2;->this$0:Lcom/htc/util/contacts/TMOClient;

    invoke-virtual {v9}, Lcom/htc/util/contacts/TMOClient;->handleGroupsAfterMyCommunityStateChange()V

    .line 1146
    return-void

    .line 1092
    .restart local v3       #isRoaming:Z
    .restart local v6       #serviceState:I
    :cond_1
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/htc/util/contacts/TMOClient;->access$502(I)I

    goto :goto_0

    .line 1095
    :cond_2
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/htc/util/contacts/TMOClient;->access$502(I)I

    goto :goto_0

    .line 1104
    :catch_0
    move-exception v1

    .line 1105
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "TMOClient"

    const-string v10, "NameNotFoundException: "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1107
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3           #isRoaming:Z
    .end local v6           #serviceState:I
    :cond_3
    const-string v9, "android.syncml.MYRIAD_AUTOSYNC_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1108
    const-string v9, "isEnabled"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1109
    .local v2, isEnabled:Z
    const-string v9, "TMOClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isEnabled: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    if-eqz v2, :cond_4

    .line 1111
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/htc/util/contacts/TMOClient;->access$602(I)I

    .line 1116
    :goto_2
    :try_start_1
    const-string v9, "com.android.htccontacts"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 1117
    .restart local v5       #peopleAppsContext:Landroid/content/Context;
    const-string v9, "MyCommunityPreferences"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1118
    .restart local v7       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1119
    .restart local v8       #spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "MyCommunityAutoSyncSetting"

    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->access$600()I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1120
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1122
    .end local v5           #peopleAppsContext:Landroid/content/Context;
    .end local v7           #sp:Landroid/content/SharedPreferences;
    .end local v8           #spEditor:Landroid/content/SharedPreferences$Editor;
    :catch_1
    move-exception v1

    .line 1123
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "TMOClient"

    const-string v10, "NameNotFoundException: "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1113
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/htc/util/contacts/TMOClient;->access$602(I)I

    goto :goto_2

    .line 1125
    .end local v2           #isEnabled:Z
    :cond_5
    const-string v9, "android.syncml.MYRIAD_SYNC_FINISHED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1126
    const-string v9, "isSuccessful"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 1127
    .local v4, isSuccessful:Z
    const-string v9, "TMOClient"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isSuccessful: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    if-eqz v4, :cond_6

    .line 1129
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/htc/util/contacts/TMOClient;->access$702(I)I

    .line 1134
    :goto_3
    :try_start_2
    const-string v9, "com.android.htccontacts"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v5

    .line 1135
    .restart local v5       #peopleAppsContext:Landroid/content/Context;
    const-string v9, "MyCommunityPreferences"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 1136
    .restart local v7       #sp:Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1137
    .restart local v8       #spEditor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "MyCommunityLastSyncState"

    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->access$700()I

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1138
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 1140
    .end local v5           #peopleAppsContext:Landroid/content/Context;
    .end local v7           #sp:Landroid/content/SharedPreferences;
    .end local v8           #spEditor:Landroid/content/SharedPreferences$Editor;
    :catch_2
    move-exception v1

    .line 1141
    .restart local v1       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "TMOClient"

    const-string v10, "NameNotFoundException: "

    invoke-static {v9, v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 1131
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/htc/util/contacts/TMOClient;->access$702(I)I

    goto :goto_3
.end method
