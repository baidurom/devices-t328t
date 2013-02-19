.class public Lcom/htc/painting/pal/PenAppAdapter;
.super Landroid/widget/BaseAdapter;
.source "PenAppAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;
    }
.end annotation


# static fields
.field private static final ID_IMAGE:I = 0x4f

.field private static final ID_TEXT:I = 0x4e

.field private static final TAG:Ljava/lang/String; = "PenAppAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisabledTextColor:Landroid/content/res/ColorStateList;

.field private mEnabledTextColor:Landroid/content/res/ColorStateList;

.field private mPal:Lcom/htc/painting/pal/PenApplicationLauncherView;

.field private mPalClickListener:Lcom/htc/painting/pal/PenApplicationLauncherView$OnPALItemClickListener;

.field private mPenApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/painting/pal/PenApplicationLauncherView;)V
    .locals 2
    .parameter "ctx"
    .parameter "pal"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPenApps:Ljava/util/ArrayList;

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPalClickListener:Lcom/htc/painting/pal/PenApplicationLauncherView$OnPALItemClickListener;

    .line 56
    iput-object p1, p0, Lcom/htc/painting/pal/PenAppAdapter;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPal:Lcom/htc/painting/pal/PenApplicationLauncherView;

    .line 58
    invoke-direct {p0}, Lcom/htc/painting/pal/PenAppAdapter;->setUpPenApps()V

    .line 59
    iget-object v1, p0, Lcom/htc/painting/pal/PenAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x206006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/painting/pal/PenAppAdapter;->mEnabledTextColor:Landroid/content/res/ColorStateList;

    .line 61
    const v1, 0x2060088

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/painting/pal/PenAppAdapter;->mDisabledTextColor:Landroid/content/res/ColorStateList;

    .line 63
    return-void
.end method

.method private firstInitApplicaitonList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/painting/pal/PenApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v9, p0, Lcom/htc/painting/pal/PenAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 176
    .local v6, pkgMgr:Landroid/content/pm/PackageManager;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 177
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "android.intent.action.PEN_APPLICATION_LAUNCHER"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const/16 v9, 0x80

    invoke-virtual {v6, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 181
    .local v1, activityList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v8, tempListDefaultApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/pal/PenApp;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 185
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 186
    .local v7, resInfo:Landroid/content/pm/ResolveInfo;
    if-nez v7, :cond_1

    .line 183
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 190
    .local v0, activityInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 194
    const/4 v2, 0x0

    .line 196
    .local v2, appData:Lcom/htc/painting/pal/PenApp;
    :try_start_0
    iget-object v9, p0, Lcom/htc/painting/pal/PenAppAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9, v0, v6}, Lcom/htc/painting/pal/PenApp;->createPenAppData(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/pm/PackageManager;)Lcom/htc/painting/pal/PenApp;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 200
    :goto_2
    if-eqz v2, :cond_0

    .line 201
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :catch_0
    move-exception v3

    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    .line 198
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 204
    .end local v0           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #appData:Lcom/htc/painting/pal/PenApp;
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #resInfo:Landroid/content/pm/ResolveInfo;
    :cond_2
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 205
    return-object v8
.end method

.method private launchApp(Lcom/htc/painting/pal/PenApp;)V
    .locals 6
    .parameter "application"

    .prologue
    .line 240
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    iget-object v2, p1, Lcom/htc/painting/pal/PenApp;->AppType:Lcom/htc/painting/pal/PenApp$APP_TYPE;

    sget-object v3, Lcom/htc/painting/pal/PenApp$APP_TYPE;->NORMAL:Lcom/htc/painting/pal/PenApp$APP_TYPE;

    if-ne v2, v3, :cond_0

    .line 247
    iget-boolean v2, p1, Lcom/htc/painting/pal/PenApp;->SendBroadcastIntent:Z

    if-eqz v2, :cond_4

    .line 249
    const-string v2, "PenAppAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PenAppLauncherMenu.LaunchApplication() - sendBroadcast() Action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p1, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, broadcast:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/painting/pal/PenAppAdapter;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 254
    iget-object v2, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPal:Lcom/htc/painting/pal/PenApplicationLauncherView;

    invoke-virtual {v2}, Lcom/htc/painting/pal/PenApplicationLauncherView;->getLaunchedWindowInfo()Lcom/htc/painting/pal/LaunchedWinInfo;

    move-result-object v1

    .line 255
    .local v1, info:Lcom/htc/painting/pal/LaunchedWinInfo;
    if-eqz v1, :cond_2

    .line 256
    const-string v2, "packageName"

    iget-object v3, v1, Lcom/htc/painting/pal/LaunchedWinInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v2, "title"

    iget-object v3, v1, Lcom/htc/painting/pal/LaunchedWinInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    :cond_2
    const-string v2, "PenAppAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PenAppLauncherMenu.LaunchApplication() - packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/painting/pal/PenApp;->AppPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", title: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/painting/pal/PenApp;->ActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v1           #info:Lcom/htc/painting/pal/LaunchedWinInfo;
    :cond_3
    iget-object v2, p0, Lcom/htc/painting/pal/PenAppAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 267
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_4
    iget-object v2, p1, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/htc/painting/pal/PenApp;->AppPackageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/htc/painting/pal/PenApp;->ActivityName:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 268
    iget-object v2, p1, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    const/high16 v3, 0x3000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 269
    const-string v2, "PenAppAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PenAppLauncherMenu.LaunchApplication() - startActivity() Action="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v2, p0, Lcom/htc/painting/pal/PenAppAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lcom/htc/painting/pal/PenApp;->AppIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private setUpPenApps()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPenApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 67
    invoke-direct {p0}, Lcom/htc/painting/pal/PenAppAdapter;->firstInitApplicaitonList()Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    .local v0, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/pal/PenApp;>;"
    iget-object v1, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPenApps:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/htc/painting/pal/PenAppAdapter;->toPenAppItem(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 69
    return-void
.end method

.method private static toPenAppItem(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/painting/pal/PenApp;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, apps:Ljava/util/List;,"Ljava/util/List<Lcom/htc/painting/pal/PenApp;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 296
    .local v1, appItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/pal/PenApp;

    .line 297
    .local v0, app:Lcom/htc/painting/pal/PenApp;
    new-instance v3, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;

    invoke-direct {v3, v0}, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;-><init>(Lcom/htc/painting/pal/PenApp;)V

    .line 298
    .local v3, item:Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    .end local v0           #app:Lcom/htc/painting/pal/PenApp;
    .end local v3           #item:Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPenApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPenApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 104
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convert"
    .parameter "parent"

    .prologue
    const/16 v7, 0x4f

    const/16 v6, 0x4e

    const/4 v5, -0x2

    .line 113
    const/4 v1, 0x0

    .line 114
    .local v1, image:Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 115
    .local v3, text:Lcom/htc/widget/HtcListItem1LineCenteredText;
    const/4 v2, 0x0

    .line 118
    .local v2, listItem:Lcom/htc/widget/HtcListItem;
    if-eqz p2, :cond_0

    instance-of v4, p2, Lcom/htc/widget/HtcListItem;

    if-eqz v4, :cond_0

    move-object v2, p2

    .line 119
    check-cast v2, Lcom/htc/widget/HtcListItem;

    .line 120
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #text:Lcom/htc/widget/HtcListItem1LineCenteredText;
    check-cast v3, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .line 121
    .restart local v3       #text:Lcom/htc/widget/HtcListItem1LineCenteredText;
    invoke-virtual {v2, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #image:Landroid/widget/ImageView;
    check-cast v1, Landroid/widget/ImageView;

    .line 136
    .restart local v1       #image:Landroid/widget/ImageView;
    :goto_0
    iget-object v4, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPenApps:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;

    .line 137
    .local v0, appItem:Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;
    iget-object v4, v0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;->mApp:Lcom/htc/painting/pal/PenApp;

    iget-object v4, v4, Lcom/htc/painting/pal/PenApp;->AppLabel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v4, v0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;->mApp:Lcom/htc/painting/pal/PenApp;

    iget-object v4, v4, Lcom/htc/painting/pal/PenApp;->AppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-boolean v4, v0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;->mEnabled:Z

    if-eqz v4, :cond_1

    .line 140
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    .line 144
    :goto_1
    return-object v2

    .line 123
    .end local v0           #appItem:Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;
    :cond_0
    new-instance v3, Lcom/htc/widget/HtcListItem1LineCenteredText;

    .end local v3           #text:Lcom/htc/widget/HtcListItem1LineCenteredText;
    iget-object v4, p0, Lcom/htc/painting/pal/PenAppAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/widget/HtcListItem1LineCenteredText;-><init>(Landroid/content/Context;)V

    .line 124
    .restart local v3       #text:Lcom/htc/widget/HtcListItem1LineCenteredText;
    const v4, 0x2030016

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setTextStyle(I)V

    .line 125
    invoke-virtual {v3, v6}, Lcom/htc/widget/HtcListItem1LineCenteredText;->setId(I)V

    .line 126
    new-instance v1, Landroid/widget/ImageView;

    .end local v1           #image:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/htc/painting/pal/PenAppAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 127
    .restart local v1       #image:Landroid/widget/ImageView;
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 129
    new-instance v2, Lcom/htc/widget/HtcListItem;

    .end local v2           #listItem:Lcom/htc/widget/HtcListItem;
    iget-object v4, p0, Lcom/htc/painting/pal/PenAppAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/htc/widget/HtcListItem;-><init>(Landroid/content/Context;)V

    .line 130
    .restart local v2       #listItem:Lcom/htc/widget/HtcListItem;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    invoke-virtual {v2, v1, v5, v5}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;II)V

    .line 132
    const/4 v4, -0x1

    invoke-virtual {v2, v3, v5, v4}, Lcom/htc/widget/HtcListItem;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 142
    .restart local v0       #appItem:Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem;->setEnabled(Z)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPenApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;

    iget-boolean v0, v0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;->mEnabled:Z

    return v0
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v2, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPenApps:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;

    .line 218
    .local v0, appItem:Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;
    iget-boolean v2, v0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;->mEnabled:Z

    if-eqz v2, :cond_1

    .line 219
    const/4 v1, 0x1

    .line 220
    .local v1, proceed:Z
    iget-object v2, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPalClickListener:Lcom/htc/painting/pal/PenApplicationLauncherView$OnPALItemClickListener;

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPalClickListener:Lcom/htc/painting/pal/PenApplicationLauncherView$OnPALItemClickListener;

    iget-object v3, v0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;->mApp:Lcom/htc/painting/pal/PenApp;

    invoke-interface {v2, p1, v3}, Lcom/htc/painting/pal/PenApplicationLauncherView$OnPALItemClickListener;->onItemClick(Landroid/view/ViewGroup;Lcom/htc/painting/pal/PenApp;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    .line 223
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 224
    iget-object v2, v0, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;->mApp:Lcom/htc/painting/pal/PenApp;

    invoke-direct {p0, v2}, Lcom/htc/painting/pal/PenAppAdapter;->launchApp(Lcom/htc/painting/pal/PenApp;)V

    .line 227
    .end local v1           #proceed:Z
    :cond_1
    return-void

    .line 221
    .restart local v1       #proceed:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public refreshPenApps()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/htc/painting/pal/PenAppAdapter;->setUpPenApps()V

    .line 77
    invoke-virtual {p0}, Lcom/htc/painting/pal/PenAppAdapter;->notifyDataSetChanged()V

    .line 78
    return-void
.end method

.method public setOnPALItemClickListener(Lcom/htc/painting/pal/PenApplicationLauncherView$OnPALItemClickListener;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPalClickListener:Lcom/htc/painting/pal/PenApplicationLauncherView$OnPALItemClickListener;

    .line 235
    return-void
.end method

.method public updateAdapterByLaunchedApp(Lcom/htc/painting/pal/LaunchedWinInfo;)V
    .locals 4
    .parameter "launched"

    .prologue
    .line 161
    if-nez p1, :cond_1

    .line 167
    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/htc/painting/pal/PenAppAdapter;->mPenApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;

    .line 163
    .local v2, item:Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;
    iget-object v3, v2, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;->mApp:Lcom/htc/painting/pal/PenApp;

    invoke-static {p1, v3}, Lcom/htc/painting/pal/PALUtilities;->shouldDisableApp(Lcom/htc/painting/pal/LaunchedWinInfo;Lcom/htc/painting/pal/PenApp;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 164
    .local v0, enable:Z
    :goto_1
    iput-boolean v0, v2, Lcom/htc/painting/pal/PenAppAdapter$PenAppItem;->mEnabled:Z

    goto :goto_0

    .line 163
    .end local v0           #enable:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
