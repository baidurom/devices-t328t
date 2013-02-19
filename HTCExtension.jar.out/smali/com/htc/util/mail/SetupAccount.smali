.class public Lcom/htc/util/mail/SetupAccount;
.super Ljava/lang/Object;
.source "SetupAccount.java"


# static fields
.field public static final ACTION_CREATE_ACCOUNT:Ljava/lang/String; = "com.htc.android.mail.mailservice.SetupAccountIntentService.CREATE"

.field public static final ACTION_EAS_CREATE_ACCOUNT:Ljava/lang/String; = "com.htc.android.mail.eassvc.account.CREATE"

.field public static final ACTION_EAS_DELETE_ACCOUNT:Ljava/lang/String; = "com.htc.android.mail.eassvc.account.DELETE"

.field public static final ACTION_EAS_GET_DEVICE_ID:Ljava/lang/String; = "com.htc.android.mail.eassvc.device.GET_ID"

.field public static final ACTION_EAS_MDM_CREATE_ACCOUNT:Ljava/lang/String; = "com.htc.android.mail.eassvc.account.mdm.CREATE"

.field public static final ACTION_EAS_MDM_DELETE_ACCOUNT:Ljava/lang/String; = "com.htc.android.mail.eassvc.account.mdm.DELETE"

.field public static final ACTION_EAS_MDM_GET_DEVICE_ID:Ljava/lang/String; = "com.htc.android.mail.eassvc.device.mdm.GET_ID"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final EXTRA_EAS_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field public static final EXTRA_EAS_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final EXTRA_EAS_DOMAIN:Ljava/lang/String; = "domain"

.field public static final EXTRA_EAS_EMAIL_ADDRESS:Ljava/lang/String; = "emailAddr"

.field public static final EXTRA_EAS_PASSWORD:Ljava/lang/String; = "password"

.field public static final EXTRA_EAS_SERVER_ADDR:Ljava/lang/String; = "serverAddr"

.field public static final EXTRA_EAS_SET_DEFAULT_ACCOUNT:Ljava/lang/String; = "setDefaultAccount"

.field public static final EXTRA_EAS_SYNC_CALENDAR:Ljava/lang/String; = "syncCalendar"

.field public static final EXTRA_EAS_SYNC_CONTACTS:Ljava/lang/String; = "syncContacts"

.field public static final EXTRA_EAS_SYNC_MAIL:Ljava/lang/String; = "syncMail"

.field public static final EXTRA_EAS_SYNC_SCHEDULE:Ljava/lang/String; = "syncSchedule"

.field public static final EXTRA_EAS_SYNC_TASKS:Ljava/lang/String; = "syncTasks"

.field public static final EXTRA_EAS_USERNAME:Ljava/lang/String; = "username"

.field public static final EXTRA_EAS_USE_SSL:Ljava/lang/String; = "useSSL"

.field public static final EXTRA_NAME_EMAILADDRESS:Ljava/lang/String; = "emailaddress"

.field public static final EXTRA_NAME_INPORT:Ljava/lang/String; = "inport"

.field public static final EXTRA_NAME_INSERVER:Ljava/lang/String; = "inserver"

.field public static final EXTRA_NAME_OUTPORT:Ljava/lang/String; = "outport"

.field public static final EXTRA_NAME_OUTSERVER:Ljava/lang/String; = "outserver"

.field public static final EXTRA_NAME_PASSWORD:Ljava/lang/String; = "password"

.field public static final EXTRA_NAME_PROTOCOL_TYPE:Ljava/lang/String; = "protocol_type"

.field public static final EXTRA_NAME_PROVIDER_GROUP:Ljava/lang/String; = "provider_group"

.field public static final EXTRA_NAME_SECURITY_TYPE_IN:Ljava/lang/String; = "security_type_in"

.field public static final EXTRA_NAME_SECURITY_TYPE_OUT:Ljava/lang/String; = "security_type_out"

.field public static final EXTRA_NAME_SMTPAUTH:Ljava/lang/String; = "smtpauth"

.field public static final EXTRA_VALUE_INPROTOCOL_OTHER:I = 0x64

.field public static final EXTRA_VALUE_PROTOCOL_TYPE_IMAP:I = 0x2

.field public static final EXTRA_VALUE_PROTOCOL_TYPE_POP3:I = 0x0

.field public static final EXTRA_VALUE_PROVIDER_GROUP_GMAIL:Ljava/lang/String; = "Gmail"

.field public static final EXTRA_VALUE_PROVIDER_GROUP_OTHER:Ljava/lang/String; = "Other"

.field public static final EXTRA_VALUE_PROVIDER_GROUP_YAHOO:Ljava/lang/String; = "Yahoo"

.field public static final EXTRA_VALUE_SECURITY_TYPE_NONE_CODE:I = 0x0

.field public static final EXTRA_VALUE_SECURITY_TYPE_SSL_CODE:I = 0x1

.field public static final EXTRA_VALUE_SECURITY_TYPE_TLS_CODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SetupAccount"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/SetupAccount;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addEASAccount(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .parameter "context"
    .parameter "action"
    .parameter "extras"

    .prologue
    .line 309
    sget-boolean v1, Lcom/htc/util/mail/SetupAccount;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SetupAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> addEASAccount(), action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 312
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 314
    sget-boolean v1, Lcom/htc/util/mail/SetupAccount;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SetupAccount"

    const-string v2, "< addEASAccount()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_1
    return-void
.end method

.method public static addEASAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 3
    .parameter "context"
    .parameter "action"
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "serverAddr"
    .parameter "domain"
    .parameter "uname"
    .parameter "password"
    .parameter "useSSL"
    .parameter "syncMail"
    .parameter "syncContacts"
    .parameter "syncCalendar"
    .parameter "syncTasks"
    .parameter "setDefaultAccount"
    .parameter "syncSchedule"

    .prologue
    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "displayName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "emailAddr"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "serverAddr"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v1, "domain"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const-string v1, "username"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "password"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "useSSL"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    if-eqz p9, :cond_0

    .line 287
    const-string v1, "syncMail"

    invoke-virtual {p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    :cond_0
    if-eqz p10, :cond_1

    .line 290
    const-string v1, "syncContacts"

    invoke-virtual {p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 292
    :cond_1
    if-eqz p11, :cond_2

    .line 293
    const-string v1, "syncCalendar"

    invoke-virtual {p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 295
    :cond_2
    if-eqz p12, :cond_3

    .line 296
    const-string v1, "syncTasks"

    invoke-virtual {p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 298
    :cond_3
    if-eqz p13, :cond_4

    .line 299
    const-string v1, "setDefaultAccount"

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 301
    :cond_4
    if-eqz p14, :cond_5

    .line 302
    const-string v1, "syncSchedule"

    invoke-virtual/range {p14 .. p14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    :cond_5
    invoke-static {p0, p1, v0}, Lcom/htc/util/mail/SetupAccount;->addEASAccount(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 306
    return-void
.end method

.method public static addEASAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 15
    .parameter "context"
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "serverAddr"
    .parameter "domain"
    .parameter "uname"
    .parameter "password"
    .parameter "useSSL"
    .parameter "syncMail"
    .parameter "syncContacts"
    .parameter "syncCalendar"
    .parameter "syncTasks"
    .parameter "setDefaultAccount"
    .parameter "syncSchedule"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 246
    const-string v1, "com.htc.android.mail.eassvc.account.mdm.CREATE"

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    invoke-static/range {v0 .. v14}, Lcom/htc/util/mail/SetupAccount;->addEASAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    .line 261
    return-void
.end method

.method public static deleteEASAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "emailAddress"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    const-string v0, "com.htc.android.mail.eassvc.account.mdm.DELETE"

    invoke-static {p0, v0, p1}, Lcom/htc/util/mail/SetupAccount;->deleteEASAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public static deleteEASAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "action"
    .parameter "emailAddress"

    .prologue
    .line 323
    sget-boolean v2, Lcom/htc/util/mail/SetupAccount;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> deleteEASAccount(), action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 325
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "emailAddr"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 328
    const-string v2, "com.htc.android.mail"

    const-string v3, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 330
    sget-boolean v2, Lcom/htc/util/mail/SetupAccount;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SetupAccount"

    const-string v3, "< deleteEASAccount()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 335
    const-string v0, "com.htc.android.mail.eassvc.device.mdm.GET_ID"

    invoke-static {p0, v0}, Lcom/htc/util/mail/SetupAccount;->getDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public static getDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "action"

    .prologue
    .line 339
    sget-boolean v1, Lcom/htc/util/mail/SetupAccount;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SetupAccount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "> getDeviceId(), action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.htc.android.mail"

    const-string v2, "com.htc.android.mail.eassvc.EASAppSvc"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 343
    sget-boolean v1, Lcom/htc/util/mail/SetupAccount;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SetupAccount"

    const-string v2, "< getDeviceId()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    return-void
.end method

.method public static setupAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "action"
    .parameter "emailaddress"
    .parameter "password"
    .parameter "providerGroup"

    .prologue
    .line 146
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static/range {v0 .. v12}, Lcom/htc/util/mail/SetupAccount;->setupAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 159
    return-void
.end method

.method public static setupAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 5
    .parameter "context"
    .parameter "action"
    .parameter "emailaddress"
    .parameter "password"
    .parameter "providerGroup"
    .parameter "inserver"
    .parameter "outserver"
    .parameter "inport"
    .parameter "outport"
    .parameter "smtpauth"
    .parameter "securityTypeIn"
    .parameter "securityTypeOut"
    .parameter "protocolType"

    .prologue
    .line 193
    sget-boolean v2, Lcom/htc/util/mail/SetupAccount;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 194
    const-string v2, "SetupAccount"

    const-string v3, "SetupAccount >>"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "context           = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action            = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emailaddress      = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "password.length() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "providerGroup     = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inserver          = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outserver         = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inport            = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "outport           = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "smtpauth          = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "securityTypeIn    = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "securityTypeOut   = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p11

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    const-string v2, "SetupAccount"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "protocolType      = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p12

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_0
    const-string v2, "com.htc.android.mail.mailservice.SetupAccountIntentService.CREATE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 211
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "emailaddress"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v2, "password"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v2, "provider_group"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v2, "inserver"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string v2, "outserver"

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "inport"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    const-string v2, "outport"

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    const-string v2, "smtpauth"

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    const-string v2, "security_type_in"

    invoke-virtual {v1, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    const-string v2, "security_type_out"

    move/from16 v0, p11

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v2, "protocol_type"

    move/from16 v0, p12

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 226
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    sget-boolean v2, Lcom/htc/util/mail/SetupAccount;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 227
    const-string v2, "SetupAccount"

    const-string v3, "SetupAccount <<"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    return-void
.end method
