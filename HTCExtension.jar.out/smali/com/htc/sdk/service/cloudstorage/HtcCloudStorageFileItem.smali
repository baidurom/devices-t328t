.class public abstract Lcom/htc/sdk/service/cloudstorage/HtcCloudStorageFileItem;
.super Ljava/lang/Object;
.source "HtcCloudStorageFileItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected account:Ljava/lang/String;

.field protected cloudLastModified:J

.field protected cloudPath:Ljava/lang/String;

.field protected cloudRev:Ljava/lang/String;

.field protected fileName:Ljava/lang/String;

.field protected fileType:Ljava/lang/String;

.field protected id:I

.field protected isDir:Z

.field protected isSync:Z

.field protected localLastModified:J

.field protected localPath:Ljava/lang/String;

.field protected localRev:Ljava/lang/String;

.field protected objectId:Ljava/lang/String;

.field protected parentId:I

.field protected serviceType:Ljava/lang/String;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract account()Ljava/lang/String;
.end method

.method public abstract getCloudLastModified()J
.end method

.method public abstract getCloudPath()Ljava/lang/String;
.end method

.method public abstract getCloudRev()Ljava/lang/String;
.end method

.method public abstract getFileName()Ljava/lang/String;
.end method

.method public abstract getFileType()Ljava/lang/String;
.end method

.method public abstract getId()I
.end method

.method public abstract getLocalLastModified()J
.end method

.method public abstract getLocalPath()Ljava/lang/String;
.end method

.method public abstract getLocalRev()Ljava/lang/String;
.end method

.method public abstract getLocalRev(Ljava/lang/String;)V
.end method

.method public abstract getObjectId()Ljava/lang/String;
.end method

.method public abstract getParentId()I
.end method

.method public abstract getServiceType()Ljava/lang/String;
.end method

.method public abstract getSyncState()Z
.end method

.method public abstract isDir()Z
.end method

.method public abstract setCloudLastModified(Ljava/util/Date;)V
.end method

.method public abstract setCloudPath(Ljava/lang/String;)V
.end method

.method public abstract setCloudRev(Ljava/lang/String;)V
.end method

.method public abstract setFileName(Ljava/lang/String;)V
.end method

.method public abstract setFileType(Ljava/lang/String;)V
.end method

.method public abstract setId(I)V
.end method

.method public abstract setLocalLastModified(Ljava/util/Date;)V
.end method

.method public abstract setLocalPath(Ljava/lang/String;)V
.end method

.method public abstract setObjectId(Ljava/lang/String;)V
.end method

.method public abstract setParentId(I)V
.end method

.method public abstract setServiceType(Ljava/lang/String;)V
.end method

.method public abstract setSyncState(Z)V
.end method

.method public abstract size()I
.end method
