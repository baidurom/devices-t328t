.class public interface abstract Landroid/provider/DrmStore$Artists;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Artists"
.end annotation


# static fields
.field public static final ARTIST:Ljava/lang/String; = "artist"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final KEY:Ljava/lang/String; = "artist_key"

.field public static final _ID:Ljava/lang/String; = "artist_id"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 243
    const-string v0, "content://drm/artists"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/DrmStore$Artists;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
