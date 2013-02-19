.class public Lcom/htc/widget/QuickContactBadge;
.super Landroid/widget/ImageView;
.source "QuickContactBadge.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/QuickContactBadge$QueryCallback;,
        Lcom/htc/widget/QuickContactBadge$QueryHandler;
    }
.end annotation


# static fields
.field static final CONTACT_ID_COLUMN_INDEX:I = 0x0

.field static final CONTACT_LOOKUPKEY_COLUMN_INDEX:I = 0x1

.field static final CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field private static final DEFAULT_SIZE_MASK_TYPES:I = 0x0

.field private static final DOWN_ANIMATION_DURATION:I = 0xe6

.field static final EMAIL_ID_COLUMN_INDEX:I = 0x0

.field static final EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final EMAIL_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_SCALE:F = 0.85f

.field static final PHONE_ID_COLUMN_INDEX:I = 0x0

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String; = null

.field static final PHONE_LOOKUP_STRING_COLUMN_INDEX:I = 0x1

.field private static final SUPPORT_MASK_TYPES:I = 0x3

.field private static final TOKEN_CONTACT_LOOKUP_AND_TRIGGER:I = 0x4

.field private static final TOKEN_EMAIL_LOOKUP:I = 0x0

.field private static final TOKEN_EMAIL_LOOKUP_AND_TRIGGER:I = 0x2

.field private static final TOKEN_PHONE_LOOKUP:I = 0x1

.field private static final TOKEN_PHONE_LOOKUP_AND_TRIGGER:I = 0x3

.field private static final UP_ANIMATION_DURATION:I = 0xfa

.field private static mask_height:[I

.field private static mask_width:[I

.field private static sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

.field private static sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

.field private static sBmpRetBadgePool:[Landroid/graphics/Bitmap;

.field private static sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

.field private static sPaint:Landroid/graphics/Paint;


# instance fields
.field private drawableBadgeDark:Landroid/graphics/drawable/Drawable;

.field private drawableBadgeLight:Landroid/graphics/drawable/Drawable;

.field private drawableNoBadgeDark:Landroid/graphics/drawable/Drawable;

.field private drawableNoBadgeLight:Landroid/graphics/drawable/Drawable;

.field private isAutoMotiveMode:Z

.field private isDarkMode:Z

.field private mCallback:Lcom/htc/widget/QuickContactBadge$QueryCallback;

.field private mCanvasBitmap:Landroid/graphics/Bitmap;

.field private mColorArray:[F

.field private mColorMatrix:Landroid/graphics/ColorMatrix;

.field private mContactEmail:Ljava/lang/String;

.field private mContactPhone:Ljava/lang/String;

.field private mContactUri:Landroid/net/Uri;

.field mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field protected mExcludeMimes:[Ljava/lang/String;

.field private mIsAnimating:Z

.field private mMode:I

.field private mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

.field private mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

.field private mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenPaint:Landroid/graphics/Paint;

.field private mSelectedContactsAppTabIndex:I

.field mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private sBmpMaskBadge:Landroid/graphics/Bitmap;

.field private sBmpMaskNoBadge:Landroid/graphics/Bitmap;

.field private sBmpRetBadge:Landroid/graphics/Bitmap;

.field private sBmpRetNoBadge:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 119
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "contact_id"

    aput-object v2, v1, v4

    const-string v2, "lookup"

    aput-object v2, v1, v6

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 124
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "lookup"

    aput-object v2, v1, v6

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 129
    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    const-string v2, "lookup"

    aput-object v2, v1, v6

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 137
    new-array v1, v3, [I

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    .line 138
    new-array v1, v3, [I

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    .line 139
    new-array v1, v3, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    .line 140
    new-array v1, v3, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    .line 141
    new-array v1, v3, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    .line 142
    new-array v1, v3, [Landroid/graphics/Bitmap;

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    .line 147
    sput-object v5, Lcom/htc/widget/QuickContactBadge;->sPaint:Landroid/graphics/Paint;

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 160
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    aput-object v5, v1, v0

    .line 161
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    aput-object v5, v1, v0

    .line 162
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    aput-object v5, v1, v0

    .line 163
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    aput-object v5, v1, v0

    .line 164
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    aput v4, v1, v0

    .line 165
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    aput v4, v1, v0

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/QuickContactBadge;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 175
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v10, 0x5dd

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 178
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 86
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 87
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->mScreenPaint:Landroid/graphics/Paint;

    .line 89
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 90
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 95
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 97
    iput-boolean v8, p0, Lcom/htc/widget/QuickContactBadge;->mIsAnimating:Z

    .line 105
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/widget/QuickContactBadge;->mSelectedContactsAppTabIndex:I

    .line 111
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 143
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    .line 144
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    .line 145
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    .line 146
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadge:Landroid/graphics/Bitmap;

    .line 148
    iput-boolean v8, p0, Lcom/htc/widget/QuickContactBadge;->isDarkMode:Z

    .line 149
    iput-boolean v8, p0, Lcom/htc/widget/QuickContactBadge;->isAutoMotiveMode:Z

    .line 150
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->drawableBadgeLight:Landroid/graphics/drawable/Drawable;

    .line 151
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->drawableBadgeDark:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->drawableNoBadgeLight:Landroid/graphics/drawable/Drawable;

    .line 153
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->drawableNoBadgeDark:Landroid/graphics/drawable/Drawable;

    .line 997
    iput-object v7, p0, Lcom/htc/widget/QuickContactBadge;->mCallback:Lcom/htc/widget/QuickContactBadge$QueryCallback;

    .line 179
    invoke-virtual {p0, v9, v7}, Lcom/htc/widget/QuickContactBadge;->setLayerType(ILandroid/graphics/Paint;)V

    .line 181
    const-string v4, "common_photo_frame_quick_contact"

    const v5, 0x208017f

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 182
    .local v3, resid:I
    if-eqz v3, :cond_0

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/QuickContactBadge;->drawableBadgeLight:Landroid/graphics/drawable/Drawable;

    .line 185
    :cond_0
    const-string v4, "common_b_photo_frame_quick_contact"

    const v5, 0x2080153

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 186
    if-eqz v3, :cond_1

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/QuickContactBadge;->drawableBadgeDark:Landroid/graphics/drawable/Drawable;

    .line 189
    :cond_1
    const-string v4, "common_photo_frame"

    const v5, 0x2080040

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 190
    if-eqz v3, :cond_2

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/QuickContactBadge;->drawableNoBadgeLight:Landroid/graphics/drawable/Drawable;

    .line 193
    :cond_2
    const-string v4, "common_b_photo_frame"

    const v5, 0x2080152

    invoke-static {p1, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 194
    if-eqz v3, :cond_3

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/QuickContactBadge;->drawableNoBadgeDark:Landroid/graphics/drawable/Drawable;

    .line 197
    :cond_3
    sget-object v4, Lcom/android/internal/R$styleable;->QuickContactBadge:[I

    invoke-virtual {p1, p2, v4, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 202
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/QuickContactBadge;->mMode:I

    .line 206
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 208
    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->init()V

    .line 210
    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "1.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "1.5"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "1.6"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "2.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "2.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    sget-object v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v5, "2.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v9, v4, :cond_6

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-ne v9, v4, :cond_6

    .line 216
    :cond_5
    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V

    .line 219
    :cond_6
    sget-object v4, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    aget v4, v4, v8

    if-nez v4, :cond_7

    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_photo_frame_mask"

    const v6, 0x208017e

    invoke-static {p1, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 227
    .local v2, mask:Landroid/graphics/Bitmap;
    sget-object v4, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v5

    .line 229
    sget-object v4, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    aput v6, v4, v5

    .line 230
    sget-object v4, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    aput v6, v4, v5

    .line 231
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v2           #mask:Landroid/graphics/Bitmap;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "common_photo_frame_quick_contact_mask"

    const v6, 0x2080180

    invoke-static {p1, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 247
    .restart local v2       #mask:Landroid/graphics/Bitmap;
    sget-object v4, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v6

    aput-object v6, v4, v5

    .line 249
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 257
    .end local v2           #mask:Landroid/graphics/Bitmap;
    :cond_7
    :goto_1
    const-string v4, "QUICK_CONTACT_BADGE_PRESS"

    invoke-static {v9, p0, v10, v4}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 260
    const-string v4, "QUICK_CONTACT_BADGE_RELEASE"

    invoke-static {v9, p0, v10, v4}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 263
    return-void

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    aput-object v7, v4, v8

    .line 235
    const-string v4, "QuickContactBadge"

    const-string v5, "Failed to obtain sBmpMaskNoBadge bitmap"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 252
    .restart local v1       #e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    aput-object v7, v4, v8

    .line 253
    const-string v4, "QuickContactBadge"

    const-string v5, "Failed to obtain sBmpMaskBadge bitmap"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/htc/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/widget/QuickContactBadge;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/QuickContactBadge;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/htc/widget/QuickContactBadge;->trigger(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/QuickContactBadge;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/widget/QuickContactBadge;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/QuickContactBadge;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/QuickContactBadge;->trigger(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget/QuickContactBadge;)Lcom/htc/widget/QuickContactBadge$QueryCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mCallback:Lcom/htc/widget/QuickContactBadge$QueryCallback;

    return-object v0
.end method

.method private hasContactInfo()Z
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 979
    const/4 v0, 0x0

    .line 981
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 604
    new-instance v0, Lcom/htc/widget/QuickContactBadge$QueryHandler;

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/QuickContactBadge$QueryHandler;-><init>(Lcom/htc/widget/QuickContactBadge;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    .line 605
    invoke-virtual {p0, p0}, Lcom/htc/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 607
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mScreenPaint:Landroid/graphics/Paint;

    .line 608
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mScreenPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 610
    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->initAnimation()V

    .line 611
    return-void
.end method

.method private initAnimation()V
    .locals 12

    .prologue
    const-wide/16 v10, 0xe6

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x3f4ccccd

    const/4 v6, 0x2

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, downScaleAnimator:Landroid/animation/ObjectAnimator;
    const/4 v2, 0x0

    .line 301
    .local v2, upScaleAnimator:Landroid/animation/ObjectAnimator;
    const/4 v1, 0x0

    .line 302
    .local v1, downScreenAnimator:Landroid/animation/ObjectAnimator;
    const/4 v3, 0x0

    .line 304
    .local v3, upScreenAnimator:Landroid/animation/ObjectAnimator;
    const-string v4, "scale"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 306
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 307
    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 309
    const-string v4, "scale"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 311
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 312
    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 314
    const-string v4, "screen"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 315
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 316
    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    const-string v4, "screen"

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 319
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 320
    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 322
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    .line 323
    iget-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v0, v5, v8

    aput-object v1, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 326
    iget-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/htc/widget/QuickContactBadge$1;

    invoke-direct {v5, p0}, Lcom/htc/widget/QuickContactBadge$1;-><init>(Lcom/htc/widget/QuickContactBadge;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    .line 344
    iget-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v2, v5, v8

    aput-object v3, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 346
    iget-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/htc/widget/QuickContactBadge$2;

    invoke-direct {v5, p0}, Lcom/htc/widget/QuickContactBadge$2;-><init>(Lcom/htc/widget/QuickContactBadge;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 379
    return-void

    .line 304
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x59t 0x3ft
    .end array-data

    .line 309
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x59t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 314
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t
    .end array-data

    .line 318
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private isSenseVersionEqualOrAbove(Ljava/lang/String;)Z
    .locals 4
    .parameter "ver"

    .prologue
    .line 986
    :try_start_0
    new-instance v1, Ljava/lang/Double;

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 987
    .local v1, senseVer:Ljava/lang/Double;
    new-instance v2, Ljava/lang/Double;

    invoke-direct {v2, p1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .line 988
    .local v2, targetVer:Ljava/lang/Double;
    invoke-virtual {v1, v2}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 989
    .local v0, compare:I
    if-ltz v0, :cond_0

    .line 990
    const/4 v3, 0x1

    .line 994
    .end local v0           #compare:I
    .end local v1           #senseVer:Ljava/lang/Double;
    .end local v2           #targetVer:Ljava/lang/Double;
    :goto_0
    return v3

    .line 992
    :catch_0
    move-exception v3

    .line 994
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onContactUriChanged()V
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 727
    iget-boolean v0, p0, Lcom/htc/widget/QuickContactBadge;->isDarkMode:Z

    if-eqz v0, :cond_0

    .line 728
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->drawableNoBadgeDark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 739
    :goto_0
    return-void

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->drawableNoBadgeLight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 733
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/QuickContactBadge;->isDarkMode:Z

    if-eqz v0, :cond_2

    .line 734
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->drawableBadgeDark:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 736
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->drawableBadgeLight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private trigger(Landroid/net/Uri;)V
    .locals 3
    .parameter "lookupUri"

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/htc/widget/QuickContactBadge;->mMode:I

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v0, p0, p1, v1, v2}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method private trigger(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "lookupUri"
    .parameter "email"
    .parameter "phone"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f00

    .line 833
    if-eqz p1, :cond_0

    .line 834
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/htc/widget/QuickContactBadge;->mMode:I

    iget-object v6, p0, Lcom/htc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v4, p0, p1, v5, v6}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 837
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 843
    .local v0, appScale:F
    const/4 v4, 0x2

    new-array v2, v4, [I

    .line 844
    .local v2, pos:[I
    invoke-virtual {p0, v2}, Lcom/htc/widget/QuickContactBadge;->getLocationOnScreen([I)V

    .line 846
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 847
    .local v3, rect:Landroid/graphics/Rect;
    aget v4, v2, v8

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 848
    aget v4, v2, v9

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 849
    aget v4, v2, v8

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 850
    aget v4, v2, v9

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 852
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.contacts.action.QUICK_CONTACT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    .local v1, intent:Landroid/content/Intent;
    const/high16 v4, 0x1420

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 857
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 858
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 859
    const-string v4, "mode"

    iget v5, p0, Lcom/htc/widget/QuickContactBadge;->mMode:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 860
    const-string v4, "exclude_mimes"

    iget-object v5, p0, Lcom/htc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 862
    const-string v4, "email"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 865
    const-string v4, "phone"

    invoke-virtual {v1, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 868
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 874
    .end local v0           #appScale:F
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pos:[I
    .end local v3           #rect:Landroid/graphics/Rect;
    :cond_4
    :goto_0
    return-void

    .line 869
    .restart local v0       #appScale:F
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #pos:[I
    .restart local v3       #rect:Landroid/graphics/Rect;
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public assignContactFromEmail(Ljava/lang/String;Z)V
    .locals 8
    .parameter "emailAddress"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    .line 753
    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 754
    if-nez p2, :cond_0

    .line 755
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    :goto_0
    return-void

    .line 762
    :cond_0
    iput-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 763
    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactFromPhone(Ljava/lang/String;Z)V
    .locals 8
    .parameter "phoneNumber"
    .parameter "lazyLookup"

    .prologue
    const/4 v2, 0x0

    .line 779
    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 780
    if-nez p2, :cond_0

    .line 781
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :goto_0
    return-void

    .line 786
    :cond_0
    iput-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 787
    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V

    goto :goto_0
.end method

.method public assignContactUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "contactUri"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 681
    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    .line 682
    iput-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    .line 683
    iput-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    .line 685
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v2, v0, :cond_2

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-ne v2, v0, :cond_2

    .line 691
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V

    .line 694
    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 464
    iget-boolean v1, p0, Lcom/htc/widget/QuickContactBadge;->isAutoMotiveMode:Z

    if-eqz v1, :cond_0

    .line 465
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 479
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/widget/QuickContactBadge;->mIsAnimating:Z

    if-eqz v1, :cond_1

    .line 469
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 470
    .local v0, c:Landroid/graphics/Canvas;
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 471
    invoke-super {p0, v0}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 472
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 473
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mScreenPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 474
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 477
    .end local v0           #c:Landroid/graphics/Canvas;
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method getDefaultHeight()I
    .locals 3

    .prologue
    .line 625
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingBottom:I

    add-int v0, v1, v2

    .line 626
    .local v0, height:I
    return v0
.end method

.method getDefaultWidth()I
    .locals 3

    .prologue
    .line 620
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingRight:I

    add-int v0, v1, v2

    .line 621
    .local v0, width:I
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 792
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;

    sget-object v4, Lcom/htc/widget/QuickContactBadge;->CONTACT_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 796
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mContactEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/htc/widget/QuickContactBadge;->EMAIL_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/htc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 803
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mQueryHandler:Lcom/htc/widget/QuickContactBadge$QueryHandler;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mContactPhone:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/htc/widget/QuickContactBadge;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v8, v2

    move-object v9, v2

    move-object v10, v2

    invoke-virtual/range {v3 .. v10}, Lcom/htc/widget/QuickContactBadge$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method onDownAnimationCancel()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 279
    :cond_0
    return-void
.end method

.method onDownAnimationEnd()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 274
    :cond_0
    return-void
.end method

.method onDownAnimationStart()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mDownAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 268
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/QuickContactBadge;->mIsAnimating:Z

    .line 269
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, bmpMask:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 636
    .local v1, bmpRet:Landroid/graphics/Bitmap;
    iget-boolean v3, p0, Lcom/htc/widget/QuickContactBadge;->isAutoMotiveMode:Z

    if-eqz v3, :cond_0

    .line 637
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 658
    :goto_0
    return-void

    .line 640
    :cond_0
    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->hasContactInfo()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 641
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    .line 642
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadge:Landroid/graphics/Bitmap;

    .line 647
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 648
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 649
    .local v2, c:Landroid/graphics/Canvas;
    const/4 v3, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 650
    invoke-super {p0, v2}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 652
    iget v3, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    int-to-float v3, v3

    iget v4, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    int-to-float v4, v4

    sget-object v5, Lcom/htc/widget/QuickContactBadge;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 653
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 644
    .end local v2           #c:Landroid/graphics/Canvas;
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    .line 645
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 656
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 15
    .parameter "wMeasureSpec"
    .parameter "hMeasureSpec"

    .prologue
    .line 487
    invoke-super/range {p0 .. p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 489
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 490
    .local v11, params:Landroid/view/ViewGroup$LayoutParams;
    iget v14, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 491
    .local v14, width:I
    iget v8, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 492
    .local v8, height:I
    const/4 v9, 0x0

    .line 493
    .local v9, idx:I
    if-lez v14, :cond_0

    if-gtz v8, :cond_1

    .line 494
    :cond_0
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    aget v1, v1, v9

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingRight:I

    add-int v14, v1, v2

    .line 495
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    aget v1, v1, v9

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingBottom:I

    add-int v8, v1, v2

    .line 496
    invoke-virtual {p0, v14, v8}, Lcom/htc/widget/QuickContactBadge;->setMeasuredDimension(II)V

    .line 498
    :cond_1
    const/4 v9, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v9, v1, :cond_2

    .line 499
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    aget v1, v1, v9

    if-nez v1, :cond_9

    .line 500
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    sub-int v2, v14, v2

    iget v3, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingRight:I

    sub-int/2addr v2, v3

    aput v2, v1, v9

    .line 501
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    sub-int v2, v8, v2

    iget v3, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingBottom:I

    sub-int/2addr v2, v3

    aput v2, v1, v9

    .line 507
    :cond_2
    const/4 v1, 0x3

    if-lt v9, v1, :cond_3

    .line 508
    const/4 v9, 0x0

    .line 510
    :cond_3
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    .line 511
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    .line 512
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    .line 513
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadge:Landroid/graphics/Bitmap;

    .line 515
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 517
    int-to-float v1, v14

    :try_start_0
    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingRight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    sget-object v2, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    div-float v13, v1, v2

    .line 520
    .local v13, scaleWidth:F
    int-to-float v1, v8

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingBottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    sget-object v2, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 523
    .local v12, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 524
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    const-string v3, "common_photo_frame_mask"

    const v4, 0x208017e

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 528
    .local v0, mask:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 529
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 531
    .local v10, mask2:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9

    .line 532
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v0           #mask:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v10           #mask2:Landroid/graphics/Bitmap;
    .end local v12           #scaleHeight:F
    .end local v13           #scaleWidth:F
    :goto_1
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    .line 541
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    if-nez v1, :cond_5

    .line 543
    int-to-float v1, v14

    :try_start_1
    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingRight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    sget-object v2, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    div-float v13, v1, v2

    .line 546
    .restart local v13       #scaleWidth:F
    int-to-float v1, v8

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingBottom:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    sget-object v2, Lcom/htc/widget/QuickContactBadge;->mask_height:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    div-float v12, v1, v2

    .line 549
    .restart local v12       #scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 550
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mContext:Landroid/content/Context;

    const-string v3, "common_photo_frame_quick_contact_mask"

    const v4, 0x2080180

    invoke-static {v2, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 558
    .restart local v0       #mask:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v13, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 559
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 561
    .restart local v10       #mask2:Landroid/graphics/Bitmap;
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9

    .line 562
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 569
    .end local v0           #mask:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v10           #mask2:Landroid/graphics/Bitmap;
    .end local v12           #scaleHeight:F
    .end local v13           #scaleWidth:F
    :goto_2
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    .line 571
    :cond_5
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 573
    :try_start_2
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadge:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    add-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 582
    :goto_3
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadge:Landroid/graphics/Bitmap;

    .line 584
    :cond_6
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadge:Landroid/graphics/Bitmap;

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 586
    :try_start_3
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadge:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingTop:I

    add-int/2addr v3, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 595
    :goto_4
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v9

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadge:Landroid/graphics/Bitmap;

    .line 597
    :cond_7
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_8

    .line 598
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/htc/widget/QuickContactBadge;->sPaint:Landroid/graphics/Paint;

    .line 599
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 601
    :cond_8
    return-void

    .line 504
    :cond_9
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->mask_width:[I

    aget v1, v1, v9

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/QuickContactBadge;->mPaddingRight:I

    add-int/2addr v1, v2

    if-eq v14, v1, :cond_2

    .line 498
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 534
    :catch_0
    move-exception v7

    .line 535
    .local v7, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskNoBadgePool:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v9

    .line 536
    const-string v1, "QuickContactBadge"

    const-string v2, "Failed to obtain sBmpMaskNoBadge bitmap"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 564
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 565
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpMaskBadgePool:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v9

    .line 566
    const-string v1, "QuickContactBadge"

    const-string v2, "Failed to obtain sBmpMaskBadge bitmap"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 577
    .end local v7           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    .line 578
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetNoBadgePool:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v9

    .line 579
    const-string v1, "QuickContactBadge"

    const-string v2, "Failed to create sBmpRetNoBadge bitmap"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 590
    .end local v7           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    .line 591
    .restart local v7       #e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/widget/QuickContactBadge;->sBmpRetBadgePool:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v9

    .line 592
    const-string v1, "QuickContactBadge"

    const-string v2, "Failed to create sBmpMaskBadge bitmap"

    invoke-static {v1, v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 387
    if-lez p1, :cond_3

    if-lez p2, :cond_3

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_3

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 392
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mCanvasBitmap:Landroid/graphics/Bitmap;

    .line 397
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 398
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 424
    iget-boolean v3, p0, Lcom/htc/widget/QuickContactBadge;->isAutoMotiveMode:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->hasContactInfo()Z

    move-result v3

    if-nez v3, :cond_1

    .line 425
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 455
    :goto_0
    return v3

    .line 426
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 455
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 428
    :pswitch_0
    iget-boolean v3, p0, Lcom/htc/widget/QuickContactBadge;->mIsAnimating:Z

    if-eqz v3, :cond_2

    .line 429
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 430
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 434
    :pswitch_1
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 435
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_1

    .line 438
    :pswitch_2
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 439
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 440
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    .line 443
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 444
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 446
    .local v2, y:I
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    .line 447
    .local v0, slop:I
    rsub-int/lit8 v3, v0, 0x0

    if-lt v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_3

    rsub-int/lit8 v3, v0, 0x0

    if-lt v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->getHeight()I

    move-result v3

    add-int/2addr v3, v0

    if-lt v2, v3, :cond_2

    .line 449
    :cond_3
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mPressDownAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 450
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 451
    iget-object v3, p0, Lcom/htc/widget/QuickContactBadge;->mPressUpAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    .line 426
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method onUpAnimationCancel()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/QuickContactBadge;->mIsAnimating:Z

    .line 294
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 296
    :cond_0
    return-void
.end method

.method onUpAnimationEnd()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/QuickContactBadge;->mIsAnimating:Z

    .line 288
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 290
    :cond_0
    return-void
.end method

.method onUpAnimationStart()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/htc/widget/QuickContactBadge;->mUpAnimationMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 284
    :cond_0
    return-void
.end method

.method public setAutoMotiveMode(Z)V
    .locals 1
    .parameter "ifEnable"

    .prologue
    .line 720
    iput-boolean p1, p0, Lcom/htc/widget/QuickContactBadge;->isAutoMotiveMode:Z

    .line 721
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/QuickContactBadge;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 722
    return-void
.end method

.method public setCallback(Lcom/htc/widget/QuickContactBadge$QueryCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge;->mCallback:Lcom/htc/widget/QuickContactBadge$QueryCallback;

    .line 1001
    return-void
.end method

.method public setDarkMode(Z)V
    .locals 3
    .parameter "ifEnable"

    .prologue
    const/4 v2, 0x1

    .line 708
    iput-boolean p1, p0, Lcom/htc/widget/QuickContactBadge;->isDarkMode:Z

    .line 709
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "1.6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v2, v0, :cond_2

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-ne v2, v0, :cond_2

    .line 715
    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/QuickContactBadge;->onContactUriChanged()V

    .line 717
    :cond_2
    return-void
.end method

.method public setDefaultOnClickListener(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 614
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 615
    invoke-virtual {p0, p0}, Lcom/htc/widget/QuickContactBadge;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 617
    :cond_0
    return-void
.end method

.method public setExcludeMimes([Ljava/lang/String;)V
    .locals 0
    .parameter "excludeMimes"

    .prologue
    .line 823
    iput-object p1, p0, Lcom/htc/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    .line 824
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 668
    iput p1, p0, Lcom/htc/widget/QuickContactBadge;->mMode:I

    .line 669
    return-void
.end method

.method setScale(F)V
    .locals 0
    .parameter "scale"

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/htc/widget/QuickContactBadge;->setScaleX(F)V

    .line 402
    invoke-virtual {p0, p1}, Lcom/htc/widget/QuickContactBadge;->setScaleY(F)V

    .line 403
    return-void
.end method

.method setScreen(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 406
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->reset()V

    .line 407
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mColorArray:[F

    .line 408
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mColorArray:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 409
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mColorArray:[F

    const/4 v2, 0x6

    aput p1, v1, v2

    .line 410
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mColorArray:[F

    const/16 v2, 0xc

    aput p1, v1, v2

    .line 411
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mColorArray:[F

    const/16 v2, 0x12

    aput p1, v1, v2

    .line 412
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Lcom/htc/widget/QuickContactBadge;->mColorArray:[F

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 413
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 414
    .local v0, cf:Landroid/graphics/ColorMatrixColorFilter;
    iget-object v1, p0, Lcom/htc/widget/QuickContactBadge;->mScreenPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 416
    invoke-virtual {p0}, Lcom/htc/widget/QuickContactBadge;->invalidate()V

    .line 417
    return-void
.end method

.method public setSelectedContactsAppTabIndex(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 704
    iput p1, p0, Lcom/htc/widget/QuickContactBadge;->mSelectedContactsAppTabIndex:I

    .line 705
    return-void
.end method
