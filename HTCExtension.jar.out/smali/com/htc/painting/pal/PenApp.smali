.class public Lcom/htc/painting/pal/PenApp;
.super Ljava/lang/Object;
.source "PenApp.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/pal/PenApp$APP_TYPE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/painting/pal/PenApp;",
        ">;"
    }
.end annotation


# static fields
.field public static final ATTR_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final ATTR_ICON:Ljava/lang/String; = "icon"

.field public static final ATTR_LAUNCH_ACTION:Ljava/lang/String; = "action"

.field public static final ATTR_LAUNCH_METHOD:Ljava/lang/String; = "method"

.field public static final META_PAL_ITEM_INFO_KEY:Ljava/lang/String; = "PAL_ITEM_INFO"

.field public static final PAL_SEND_BY_BROADCAST:Ljava/lang/String; = "com.htc.PAL_SEND_BY_BROADCAST"

.field private static final TAG:Ljava/lang/String; = "PenApp"

.field public static final TAG_CLICK_ACTION:Ljava/lang/String; = "click_action"

.field public static final TAG_PAL_ITEM:Ljava/lang/String; = "pen_application_launcher_item"


# instance fields
.field public ActivityName:Ljava/lang/String;

.field public ActivityTitle:Ljava/lang/CharSequence;

.field public AppIcon:Landroid/graphics/drawable/Drawable;

.field public AppIntent:Landroid/content/Intent;

.field public AppLabel:Ljava/lang/String;

.field public AppPackageName:Ljava/lang/String;

.field public AppType:Lcom/htc/painting/pal/PenApp$APP_TYPE;

.field public SendBroadcastIntent:Z

.field private mPriority:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-boolean v1, p0, Lcom/htc/painting/pal/PenApp;->SendBroadcastIntent:Z

    .line 93
    iput-object v0, p0, Lcom/htc/painting/pal/PenApp;->AppLabel:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    .line 103
    iput-object v0, p0, Lcom/htc/painting/pal/PenApp;->ActivityTitle:Ljava/lang/CharSequence;

    .line 108
    iput-object v0, p0, Lcom/htc/painting/pal/PenApp;->AppIcon:Landroid/graphics/drawable/Drawable;

    .line 110
    iput v1, p0, Lcom/htc/painting/pal/PenApp;->mPriority:I

    .line 112
    return-void
.end method

.method private static adjustPriority(Lcom/htc/painting/pal/PenApp;)V
    .locals 2
    .parameter "appData"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/htc/painting/pal/PenApp;->AppPackageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/htc/painting/pal/PenApp;->AppPackageName:Ljava/lang/String;

    const-string v1, "com.htc.mysketcher"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    const/16 v0, -0xa

    iput v0, p0, Lcom/htc/painting/pal/PenApp;->mPriority:I

    goto :goto_0

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/pal/PenApp;->AppPackageName:Ljava/lang/String;

    const-string v1, "com.htc.notes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, -0x5

    iput v0, p0, Lcom/htc/painting/pal/PenApp;->mPriority:I

    goto :goto_0
.end method

.method public static createPenAppData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)Lcom/htc/painting/pal/PenApp;
    .locals 9
    .parameter "ctx"
    .parameter "activityInfo"
    .parameter "pkgMgr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    new-instance v0, Lcom/htc/painting/pal/PenApp;

    invoke-direct {v0}, Lcom/htc/painting/pal/PenApp;-><init>()V

    .line 206
    .local v0, appData:Lcom/htc/painting/pal/PenApp;
    sget-object v6, Lcom/htc/painting/pal/PenApp$APP_TYPE;->NORMAL:Lcom/htc/painting/pal/PenApp$APP_TYPE;

    iput-object v6, v0, Lcom/htc/painting/pal/PenApp;->AppType:Lcom/htc/painting/pal/PenApp$APP_TYPE;

    .line 207
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v6, v0, Lcom/htc/painting/pal/PenApp;->AppPackageName:Ljava/lang/String;

    .line 208
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v6, v0, Lcom/htc/painting/pal/PenApp;->ActivityName:Ljava/lang/String;

    .line 209
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v7, p1, Landroid/content/pm/ActivityInfo;->labelRes:I

    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v6, v7, v8}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v0, Lcom/htc/painting/pal/PenApp;->ActivityTitle:Ljava/lang/CharSequence;

    .line 212
    const/4 v3, 0x0

    .line 213
    .local v3, resources:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .line 215
    .local v2, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    .line 216
    const-string v6, "PenApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    .line 218
    iget-object v6, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "PAL_ITEM_INFO"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 225
    :cond_0
    :goto_0
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 226
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    .line 227
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, tag:Ljava/lang/String;
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 230
    const-string v6, "pen_application_launcher_item"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 231
    invoke-static {v2, v0, v3}, Lcom/htc/painting/pal/PenApp;->parsePalInfo(Landroid/content/res/XmlResourceParser;Lcom/htc/painting/pal/PenApp;Landroid/content/res/Resources;)V

    .line 235
    :cond_1
    :goto_2
    const-string v6, "PenApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing START_TAG: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_2
    :goto_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_1

    .line 220
    .end local v4           #tag:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 221
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "PenApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to get XML for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #tag:Ljava/lang/String;
    :cond_3
    const-string v6, "click_action"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 233
    invoke-static {v2, v0, p1}, Lcom/htc/painting/pal/PenApp;->parseLaunchBy(Landroid/content/res/XmlResourceParser;Lcom/htc/painting/pal/PenApp;Landroid/content/pm/ActivityInfo;)V

    goto :goto_2

    .line 236
    :cond_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 237
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 238
    .local v5, text:Ljava/lang/String;
    const-string v6, "PenApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing text: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 245
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #text:Ljava/lang/String;
    :cond_5
    invoke-static {v0, p0, p1, v3, p2}, Lcom/htc/painting/pal/PenApp;->fillInDefaultData(Lcom/htc/painting/pal/PenApp;Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;)V

    .line 247
    invoke-static {v0}, Lcom/htc/painting/pal/PenApp;->adjustPriority(Lcom/htc/painting/pal/PenApp;)V

    .line 249
    return-object v0
.end method

.method private static fillInDefaultData(Lcom/htc/painting/pal/PenApp;Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;)V
    .locals 4
    .parameter "appData"
    .parameter "ctx"
    .parameter "activityInfo"
    .parameter "resources"
    .parameter "pkgMgr"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/htc/painting/pal/PenApp;->AppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 182
    :try_start_0
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v1, p0, Lcom/htc/painting/pal/PenApp;->AppIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/painting/pal/PenApp;->AppLabel:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 189
    :try_start_1
    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {p4, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/painting/pal/PenApp;->AppLabel:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    if-nez v1, :cond_2

    .line 196
    invoke-static {p2}, Lcom/htc/painting/pal/PenApp;->makeDefaultSendIntent(Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    .line 197
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/painting/pal/PenApp;->SendBroadcastIntent:Z

    .line 199
    :cond_2
    return-void

    .line 183
    :catch_0
    move-exception v0

    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "PenApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PenApplications.firstInitApplicaitonList() - PackageManager.getApplicationIcon() throw NameNotFoundException !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 191
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "PenApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PenApplications.firstInitApplicaitonList() - PackageManager.getApplicationInfo() throw NameNotFoundException !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static makeDefaultSendIntent(Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .locals 4
    .parameter "activityInfo"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PEN_APPLICATION_LAUNCHER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, result:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 137
    return-object v0
.end method

.method private static parseLaunchBy(Landroid/content/res/XmlResourceParser;Lcom/htc/painting/pal/PenApp;Landroid/content/pm/ActivityInfo;)V
    .locals 5
    .parameter "parser"
    .parameter "appData"
    .parameter "activityInfo"

    .prologue
    .line 141
    invoke-static {p2}, Lcom/htc/painting/pal/PenApp;->makeDefaultSendIntent(Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p1, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    .line 142
    const/4 v4, 0x0

    iput-boolean v4, p1, Lcom/htc/painting/pal/PenApp;->SendBroadcastIntent:Z

    .line 144
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    .line 145
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_3

    .line 146
    invoke-interface {p0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, attrName:Ljava/lang/String;
    invoke-interface {p0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, attrVal:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 145
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_1
    const-string v4, "action"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 152
    iget-object v4, p1, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 153
    :cond_2
    const-string v4, "method"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    const-string v4, "com.htc.PAL_SEND_BY_BROADCAST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/htc/painting/pal/PenApp;->SendBroadcastIntent:Z

    goto :goto_1

    .line 159
    .end local v0           #attrName:Ljava/lang/String;
    .end local v1           #attrVal:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static parsePalInfo(Landroid/content/res/XmlResourceParser;Lcom/htc/painting/pal/PenApp;Landroid/content/res/Resources;)V
    .locals 7
    .parameter "parser"
    .parameter "appData"
    .parameter "resources"

    .prologue
    const/4 v6, 0x0

    .line 162
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v1

    .line 163
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 164
    invoke-interface {p0, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, attrName:Ljava/lang/String;
    const-string v3, "icon"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    invoke-interface {p0, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/painting/pal/PenApp;->AppIcon:Landroid/graphics/drawable/Drawable;

    .line 171
    :cond_0
    :goto_1
    const-string v3, "PenApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TAG_PAL_INFO: attr =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    const-string v3, "description"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0, v2, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/htc/painting/pal/PenApp;->AppLabel:Ljava/lang/String;

    goto :goto_1

    .line 173
    .end local v0           #attrName:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/painting/pal/PenApp;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 125
    iget v0, p0, Lcom/htc/painting/pal/PenApp;->mPriority:I

    iget v1, p1, Lcom/htc/painting/pal/PenApp;->mPriority:I

    if-eq v0, v1, :cond_0

    .line 126
    iget v0, p0, Lcom/htc/painting/pal/PenApp;->mPriority:I

    iget v1, p1, Lcom/htc/painting/pal/PenApp;->mPriority:I

    sub-int/2addr v0, v1

    .line 128
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/painting/pal/PenApp;->AppLabel:Ljava/lang/String;

    iget-object v1, p1, Lcom/htc/painting/pal/PenApp;->AppLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    check-cast p1, Lcom/htc/painting/pal/PenApp;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/painting/pal/PenApp;->compareTo(Lcom/htc/painting/pal/PenApp;)I

    move-result v0

    return v0
.end method
