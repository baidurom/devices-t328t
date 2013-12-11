.class public Lcom/htc/util/calendar/tools/IconTools;
.super Ljava/lang/Object;
.source "IconTools.java"


# static fields
.field public static final ACCOUNT_NAME_EXCHANGE:Ljava/lang/String; = "Exchange"

.field public static final ACCOUNT_NAME_FACEBOOK:Ljava/lang/String; = "Facebook"

.field public static final ACCOUNT_NAME_GOOGLE:Ljava/lang/String; = "Google"

.field public static final ACCOUNT_NAME_HOTMAIL:Ljava/lang/String; = "Hotmail"

.field public static final ACCOUNT_NAME_PCSYNC:Ljava/lang/String; = "PC Sync"

.field public static final ACCOUNT_PEOPLE:Ljava/lang/String; = "HTC_BirthdayEvent"

.field public static final PACKAGE_NAME_PCSC:Ljava/lang/String; = "com.htc.android.psclient"

.field public static final PACKAGE_NAME_PEOPLE:Ljava/lang/String; = "com.android.htccontacts"

.field public static final PACKAGE_NAME_TASK:Ljava/lang/String; = "com.htc.task"

.field private static final TAG:Ljava/lang/String; = "IconTools"

.field private static mCachedIcon:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private static mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPackageContext(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Context;
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getAppNameByAccountType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 187
    const-string v0, ""

    .line 188
    .local v0, appName:Ljava/lang/String;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const-string v0, "PC Sync"

    .line 191
    :cond_0
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    const-string v0, "Exchange"

    .line 194
    :cond_1
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    const-string v0, "Google"

    .line 197
    :cond_2
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 198
    const-string v0, "Facebook"

    .line 200
    :cond_3
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcWindowsLiveAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    const-string v0, "Hotmail"

    .line 203
    :cond_4
    return-object v0
.end method

.method private static getIconByPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "pm"
    .parameter "pkgName"

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 73
    .local v0, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v1

    .line 75
    .local v1, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "IconTools"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkgName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icon not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getTypeIconByAccountType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .parameter "context"
    .parameter "accountType"

    .prologue
    .line 90
    const-string v8, "IconTools"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getTypeIconByAccountType accountType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    if-eqz v8, :cond_0

    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 92
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    move-object v6, v8

    .line 183
    :goto_0
    return-object v6

    .line 96
    :cond_0
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    if-nez v8, :cond_1

    .line 97
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    .line 99
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 100
    .local v1, authDescs:[Landroid/accounts/AuthenticatorDescription;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v8, v1

    if-ge v5, v8, :cond_2

    .line 101
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    aget-object v9, v1, v5

    iget-object v9, v9, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    aget-object v10, v1, v5

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 105
    .end local v1           #authDescs:[Landroid/accounts/AuthenticatorDescription;
    .end local v5           #i:I
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    .line 106
    .local v2, currAuthDescs:[Landroid/accounts/AuthenticatorDescription;
    array-length v8, v2

    sget-object v9, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 108
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 111
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_2
    array-length v8, v2

    if-ge v5, v8, :cond_2

    .line 112
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    aget-object v9, v2, v5

    iget-object v9, v9, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    aget-object v10, v2, v5

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 117
    .end local v2           #currAuthDescs:[Landroid/accounts/AuthenticatorDescription;
    .end local v5           #i:I
    :cond_2
    const/4 v6, 0x0

    .line 118
    .local v6, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 121
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 123
    const-string v8, "com.htc.android.psclient"

    invoke-static {v7, v8}, Lcom/htc/util/calendar/tools/IconTools;->getIconByPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 124
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_3
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcTaskAccountType()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 131
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object p1

    .line 135
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcWindowsLiveAccountType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    if-eqz v7, :cond_5

    .line 137
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcWindowsLiveAccountType()Ljava/lang/String;

    move-result-object p1

    .line 141
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v7, :cond_6

    .line 143
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object p1

    .line 146
    :cond_6
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcLocalTaskAccountType()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v7, :cond_7

    .line 148
    const-string v8, "com.htc.task"

    invoke-static {v7, v8}, Lcom/htc/util/calendar/tools/IconTools;->getIconByPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 149
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 154
    :cond_7
    const-string v8, "HTC_BirthdayEvent"

    invoke-static {p1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz v7, :cond_8

    .line 156
    const-string v8, "com.android.htccontacts"

    invoke-static {v7, v8}, Lcom/htc/util/calendar/tools/IconTools;->getIconByPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 157
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 162
    :cond_8
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 164
    :try_start_0
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v8, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    .line 166
    .local v3, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v8, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p0, v8, v9}, Lcom/htc/util/calendar/tools/IconTools;->createPackageContext(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 167
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v3, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 177
    .end local v0           #authContext:Landroid/content/Context;
    .end local v3           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_9
    :goto_3
    if-nez v6, :cond_a

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/util/calendar/tools/IconTools;->getIconByPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto/16 :goto_0

    .line 168
    :catch_0
    move-exception v4

    .line 169
    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string v8, "IconTools"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No icon for account type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 172
    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v8

    throw v8

    .line 170
    :catch_1
    move-exception v4

    .line 171
    .local v4, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    const-string v8, "IconTools"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Icon resource not found for account type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 181
    .end local v4           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_a
    sget-object v8, Lcom/htc/util/calendar/tools/IconTools;->mCachedIcon:Ljava/util/HashMap;

    invoke-virtual {v8, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
