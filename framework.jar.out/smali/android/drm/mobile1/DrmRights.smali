.class public Landroid/drm/mobile1/DrmRights;
.super Ljava/lang/Object;
.source "DrmRights.java"


# static fields
.field public static final DRM_PERMISSION_DISPLAY:I = 0x2

.field public static final DRM_PERMISSION_EXECUTE:I = 0x3

.field public static final DRM_PERMISSION_PLAY:I = 0x1

.field public static final DRM_PERMISSION_PRINT:I = 0x4

.field private static final JNI_DRM_FAILURE:I = -0x1

.field private static final JNI_DRM_SUCCESS:I = 0x0

.field private static final LOGD:Z = true


# instance fields
.field private roId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 213
    :try_start_0
    const-string v1, "drm1_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 215
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 216
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libdrm1_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const-string v0, ""

    iput-object v0, p0, Landroid/drm/mobile1/DrmRights;->roId:Ljava/lang/String;

    .line 69
    return-void
.end method

.method private isFuseEnabled()Z
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x1

    .line 173
    .local v0, bRet:Z
    return v0
.end method

.method private modifyContentID(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "sID"

    .prologue
    .line 155
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, sNewID:Ljava/lang/String;
    :goto_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 158
    const-string v1, "\\/"

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_0
    return-object v0
.end method

.method private native nativeConsumeRights(I)I
.end method

.method private native nativeConsumeRightsWithSync(IIIIIII)I
.end method

.method private native nativeGetConstraintInfo(ILandroid/drm/mobile1/DrmConstraintInfo;)I
.end method


# virtual methods
.method public consumeRights(I)Z
    .locals 2
    .parameter "permission"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/drm/mobile1/DrmRights;->nativeConsumeRights(I)I

    move-result v0

    .line 102
    .local v0, res:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 103
    const/4 v1, 0x0

    .line 105
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public consumeRightsWithSync(ILjava/util/Date;)Z
    .locals 11
    .parameter "permission"
    .parameter "date"

    .prologue
    const/4 v10, 0x1

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 121
    .local v8, calendar:Ljava/util/Calendar;
    invoke-virtual {v8, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 122
    invoke-virtual {v8, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 123
    .local v2, year:I
    const/4 v0, 0x2

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    .line 124
    .local v3, month:I
    const/4 v0, 0x5

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 125
    .local v4, day:I
    const/16 v0, 0xb

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 126
    .local v5, hours:I
    const/16 v0, 0xc

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 127
    .local v6, minutes:I
    const/16 v0, 0xd

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .local v7, seconds:I
    move-object v0, p0

    move v1, p1

    .line 129
    invoke-direct/range {v0 .. v7}, Landroid/drm/mobile1/DrmRights;->nativeConsumeRightsWithSync(IIIIIII)I

    move-result v9

    .line 131
    .local v9, res:I
    const/4 v0, -0x1

    if-ne v0, v9, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 134
    :goto_0
    return v0

    :cond_0
    move v0, v10

    goto :goto_0
.end method

.method public getConstraint(I)Landroid/drm/mobile1/DrmConstraintInfo;
    .locals 3
    .parameter "permission"

    .prologue
    .line 79
    new-instance v0, Landroid/drm/mobile1/DrmConstraintInfo;

    invoke-direct {v0}, Landroid/drm/mobile1/DrmConstraintInfo;-><init>()V

    .line 82
    .local v0, c:Landroid/drm/mobile1/DrmConstraintInfo;
    invoke-direct {p0, p1, v0}, Landroid/drm/mobile1/DrmRights;->nativeGetConstraintInfo(ILandroid/drm/mobile1/DrmConstraintInfo;)I

    move-result v1

    .line 84
    .local v1, res:I
    const/4 v2, -0x1

    if-ne v2, v1, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 87
    .end local v0           #c:Landroid/drm/mobile1/DrmConstraintInfo;
    :cond_0
    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, sID:Ljava/lang/String;
    invoke-direct {p0}, Landroid/drm/mobile1/DrmRights;->isFuseEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Landroid/drm/mobile1/DrmRights;->roId:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/drm/mobile1/DrmRights;->modifyContentID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    const-string v1, "DrmRights"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUid(): roId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/drm/mobile1/DrmRights;->roId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sNewID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-object v0

    .line 147
    :cond_0
    iget-object v0, p0, Landroid/drm/mobile1/DrmRights;->roId:Ljava/lang/String;

    goto :goto_0
.end method
