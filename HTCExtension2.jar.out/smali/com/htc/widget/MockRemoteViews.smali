.class public Lcom/htc/widget/MockRemoteViews;
.super Landroid/widget/RemoteViews;
.source "MockRemoteViews.java"


# static fields
.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 18
    return-void
.end method


# virtual methods
.method public estimateBitmapMemoryUsage()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method
