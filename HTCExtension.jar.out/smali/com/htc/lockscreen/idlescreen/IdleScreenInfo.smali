.class public Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
.super Ljava/lang/Object;
.source "IdleScreenInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "IdleScreenInfo"


# instance fields
.field final mAuthorResource:I

.field final mDescriptionResource:I

.field final mPreviewServiceName:Ljava/lang/String;

.field final mService:Landroid/content/pm/ResolveInfo;

.field final mSettingsActivityName:Ljava/lang/String;

.field final mShowTime:Z

.field final mShowUnlock:Z

.field final mThumbnailResource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 302
    new-instance v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo$1;

    invoke-direct {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo$1;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 24
    .parameter "context"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 45
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v18, v0

    .line 47
    .local v18, si:Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 48
    .local v13, pm:Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    .line 49
    .local v17, settingsActivityComponent:Ljava/lang/String;
    const/16 v19, -0x1

    .line 50
    .local v19, thumbnailRes:I
    const/4 v4, -0x1

    .line 51
    .local v4, authorRes:I
    const/4 v7, -0x1

    .line 52
    .local v7, descriptionRes:I
    const-string v14, ""

    .line 53
    .local v14, previewService:Ljava/lang/String;
    const/4 v6, 0x0

    .line 54
    .local v6, bShowUnLock:Z
    const/4 v5, 0x1

    .line 55
    .local v5, bShowTime:Z
    const/4 v11, 0x0

    .line 57
    .local v11, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v12

    .line 58
    .local v12, pkgContext:Landroid/content/Context;
    const-string v21, "com.htc.lockscreen.idlescreen"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    .line 59
    if-nez v11, :cond_1

    .line 60
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "No com.htc.lockscreen.idlescreen meta-data"

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v12           #pkgContext:Landroid/content/Context;
    :catch_0
    move-exception v8

    .line 140
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unable to create context for: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v21

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v21

    .line 64
    .restart local v12       #pkgContext:Landroid/content/Context;
    :cond_1
    :try_start_2
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v15

    .line 66
    .local v15, res:Landroid/content/res/Resources;
    invoke-static {v11}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 69
    .local v3, attrs:Landroid/util/AttributeSet;
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .line 70
    .local v20, type:I
    const/4 v9, 0x1

    .line 71
    .local v9, isFirst:Z
    :goto_0
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 72
    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 73
    if-eqz v9, :cond_3

    .line 74
    const/4 v9, 0x0

    .line 75
    const-string v21, "IdleScreen"

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 76
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "Meta-data does not start with IdleScreen tag"

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 79
    :cond_2
    sget-object v21, Lcom/htc/R$styleable;->IdleScreen:[I

    move-object/from16 v0, v21

    invoke-virtual {v15, v3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 81
    .local v16, sa:Landroid/content/res/TypedArray;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 84
    const/16 v21, 0x2

    const/16 v22, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 87
    const/16 v21, 0x3

    const/16 v22, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 90
    const/16 v21, 0x1

    const/16 v22, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 93
    const/16 v21, 0x4

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 97
    const/16 v21, 0x5

    const/16 v22, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 102
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    .end local v16           #sa:Landroid/content/res/TypedArray;
    :cond_3
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 105
    .local v10, name:Ljava/lang/String;
    const-string v21, "preview_service"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 106
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .line 107
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 108
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v14

    .line 136
    .end local v10           #name:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    goto/16 :goto_0

    .line 111
    .restart local v10       #name:Ljava/lang/String;
    :cond_5
    const-string v21, "description"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 112
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .line 113
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 114
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v12, v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getStringResIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    goto :goto_1

    .line 117
    :cond_6
    const-string v21, "autor"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 118
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .line 119
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 120
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v12, v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getStringResIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    goto :goto_1

    .line 123
    :cond_7
    const-string v21, "thumbnail"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 124
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .line 125
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 126
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v12, v0, v1, v2}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v19

    goto/16 :goto_1

    .line 129
    :cond_8
    const-string v21, "setting_activity"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 130
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .line 131
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 132
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v17

    goto/16 :goto_1

    .line 143
    .end local v10           #name:Ljava/lang/String;
    :cond_9
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->close()V

    .line 145
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 146
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mPreviewServiceName:Ljava/lang/String;

    .line 147
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mThumbnailResource:I

    .line 148
    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mAuthorResource:I

    .line 149
    move-object/from16 v0, p0

    iput v7, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mDescriptionResource:I

    .line 150
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowUnlock:Z

    .line 151
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowTime:Z

    .line 152
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "source"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mPreviewServiceName:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mThumbnailResource:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mAuthorResource:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mDescriptionResource:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowUnlock:Z

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowTime:Z

    .line 162
    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 163
    return-void

    :cond_0
    move v0, v2

    .line 160
    goto :goto_0

    :cond_1
    move v1, v2

    .line 161
    goto :goto_1
.end method

.method private static getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 326
    const-string v0, "drawable"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getResIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getResIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .parameter "context"
    .parameter "packageName"
    .parameter "resType"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 331
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3, p2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, id:I
    if-nez v0, :cond_0

    .line 335
    .end local p4
    :goto_0
    return p4

    .restart local p4
    :cond_0
    move p4, v0

    goto :goto_0
.end method

.method private static getStringResIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 322
    const-string v0, "string"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->getResIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 343
    const/4 v2, 0x4

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 350
    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .line 344
    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 345
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    .line 346
    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .line 348
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Service:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mSettingsActivityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 270
    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 3

    .prologue
    .line 182
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mPreviewServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public isShowTime()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowTime:Z

    return v0
.end method

.method public isShowUnlock()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowUnlock:Z

    return v0
.end method

.method public loadAuthor(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .parameter "pm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 211
    iget v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mAuthorResource:I

    if-gtz v2, :cond_0

    .line 212
    const/4 v2, 0x0

    .line 220
    :goto_0
    return-object v2

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 215
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 216
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_1

    .line 217
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 218
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 220
    :cond_1
    iget v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mAuthorResource:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "pm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v2, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 225
    .local v1, packageName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 226
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_0

    .line 227
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 228
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v2, :cond_1

    .line 231
    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v2, v2, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 238
    :goto_0
    return-object v2

    .line 235
    :cond_1
    iget v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mDescriptionResource:I

    if-gtz v2, :cond_2

    .line 236
    const-string v2, ""

    goto :goto_0

    .line 238
    :cond_2
    iget v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mDescriptionResource:I

    iget-object v3, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pm"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "pm"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public loadThumbnail(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .parameter "pm"

    .prologue
    .line 199
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mThumbnailResource:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 201
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mThumbnailResource:I

    iget-object v2, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IdleScreenInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 288
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mPreviewServiceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mThumbnailResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mAuthorResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mDescriptionResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowUnlock:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-boolean v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mShowTime:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v0, p0, Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 296
    return-void

    :cond_0
    move v0, v2

    .line 293
    goto :goto_0

    :cond_1
    move v1, v2

    .line 294
    goto :goto_1
.end method
