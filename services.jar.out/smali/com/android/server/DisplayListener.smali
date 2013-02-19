.class final Lcom/android/server/DisplayListener;
.super Ljava/lang/Object;
.source "DisplayListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DISPLAY_SOCKET:Ljava/lang/String; = "displayd"

.field private static final HDMI_CMD_CHANGE_MODE:Ljava/lang/String; = "change_mode: "

.field private static final HDMI_CMD_CLEAR_BITMAP:Ljava/lang/String; = "clear_bitmap"

.field private static final HDMI_CMD_DISABLE_HDMI:Ljava/lang/String; = "disable_hdmi"

.field private static final HDMI_CMD_ENABLE_HDMI:Ljava/lang/String; = "enable_hdmi"

.field private static final HDMI_CMD_SET_BITMAT:Ljava/lang/String; = "set_bitmap"

.field private static final HDMI_EVT_CONNECTED:Ljava/lang/String; = "hdmi_connected"

.field private static final HDMI_EVT_DISCONNECTED:Ljava/lang/String; = "hdmi_disconnected"

.field private static final HDMI_EVT_HDCP_AUTHENTICATED:Ljava/lang/String; = "hdmi_hdcp_authenticated"

.field private static final HDMI_EVT_HDCP_DEAUTHENTICATED:Ljava/lang/String; = "hdmi_hdcp_deauthenticated"

.field private static final HDMI_EVT_START:Ljava/lang/String; = "hdmi_listner_started"

.field private static final PANEL_3D_MODE:Ljava/lang/String; = "enable_3d: "

.field private static final PANEL_CMD_3DLANDSCAPE:Ljava/lang/String; = "switch_3Dlandscape"

.field private static final PANEL_CMD_3DOFF:Ljava/lang/String; = "switch_3Doff"

.field private static final PANEL_CMD_3DPORTRAIT:Ljava/lang/String; = "switch_3Dportrait"

.field private static final PANEL_EVT_SWITCH3D:Ljava/lang/String; = "panel_3Dmodes: "

.field private static final TAG:Ljava/lang/String; = "DisplayListener"

.field private static final TV_CMD_3DOFF:Ljava/lang/String; = "switch_TV_3Doff"

.field private static final TV_CMD_3D_SIDEBYSIDE:Ljava/lang/String; = "switch_3D_sideBySide"

.field private static final TV_CMD_3D_TOPBOTTON:Ljava/lang/String; = "switch_3D_topBotton"

.field private static final TV_CMD_DETECT3DMODE:Ljava/lang/String; = "detect_TV_3Dmodes"

.field private static final TV_CMD_TVMODE:Ljava/lang/String; = "switch_TVout_mode: "

.field private static final VIDEO_CMD_STEREO_MODE:Ljava/lang/String; = "switch_3Dvideo_mode: "


# instance fields
.field private mEDIDs:[I

.field private mHDMIConnected:Z

.field private mHDMIEnabled:Z

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPanel3Dmode:I

.field private mService:Lcom/android/server/DisplayService;

.field private mTV3Dmode:I


# direct methods
.method constructor <init>(Lcom/android/server/DisplayService;)V
    .locals 1
    .parameter "service"

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIConnected:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIEnabled:Z

    .line 76
    iput v0, p0, Lcom/android/server/DisplayListener;->mPanel3Dmode:I

    .line 77
    iput v0, p0, Lcom/android/server/DisplayListener;->mTV3Dmode:I

    .line 78
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/DisplayListener;->mEDIDs:[I

    .line 81
    iput-object p1, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    .line 82
    return-void
.end method

.method private handleEvent(Ljava/lang/String;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 85
    const-string v3, "DisplayListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleEvent \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v3, "hdmi_connected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 88
    const-string v3, "hdmi_connected"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, ids:[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/server/DisplayListener;->mEDIDs:[I

    .line 90
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/DisplayListener;->mEDIDs:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 92
    :try_start_0
    iget-object v3, p0, Lcom/android/server/DisplayListener;->mEDIDs:[I

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "DisplayListener"

    const-string v4, "NumberFormatException in handleEvent"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 97
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/DisplayListener;->mHDMIConnected:Z

    .line 98
    iget-object v3, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    iget-object v4, p0, Lcom/android/server/DisplayListener;->mEDIDs:[I

    invoke-virtual {v3, v4}, Lcom/android/server/DisplayService;->notifyHDMIConnected([I)V

    .line 109
    .end local v1           #i:I
    .end local v2           #ids:[Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 99
    :cond_2
    const-string v3, "hdmi_disconnected"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 100
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/DisplayListener;->mHDMIConnected:Z

    .line 101
    iget-object v3, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    invoke-virtual {v3}, Lcom/android/server/DisplayService;->notifyHDMIDisconnected()V

    goto :goto_2

    .line 102
    :cond_3
    const-string v3, "hdmi_hdcp_authenticated"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 103
    const-string v3, "DisplayListener"

    const-string v4, "In handleEvent: HDCP Authenticated"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v3, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    invoke-virtual {v3}, Lcom/android/server/DisplayService;->notifyHDMIHDCPAuthenticated()V

    goto :goto_2

    .line 105
    :cond_4
    const-string v3, "hdmi_hdcp_deauthenticated"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 106
    const-string v3, "DisplayListener"

    const-string v4, "In handleEvent: HDCP DeAuthenticated"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v3, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    invoke-virtual {v3}, Lcom/android/server/DisplayService;->notifyHDMIHDCPDeauthenticated()V

    goto :goto_2
.end method

.method private listenToSocket()V
    .locals 14

    .prologue
    .line 134
    const/4 v8, 0x0

    .line 137
    .local v8, socket:Landroid/net/LocalSocket;
    :try_start_0
    new-instance v9, Landroid/net/LocalSocket;

    invoke-direct {v9}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v8           #socket:Landroid/net/LocalSocket;
    .local v9, socket:Landroid/net/LocalSocket;
    :try_start_1
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v11, "displayd"

    sget-object v12, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v11, v12}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 141
    .local v0, address:Landroid/net/LocalSocketAddress;
    invoke-virtual {v9, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 143
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 144
    .local v7, inputStream:Ljava/io/InputStream;
    invoke-virtual {v9}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    iput-object v11, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;

    .line 153
    const/16 v11, 0x200

    new-array v1, v11, [B

    .line 155
    .local v1, buffer:[B
    const-string v11, "hdmi_listner_started"

    const/4 v12, 0x0

    invoke-direct {p0, v11, v12}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    .line 158
    .local v2, count:I
    if-gez v2, :cond_3

    move-object v8, v9

    .line 173
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v9           #socket:Landroid/net/LocalSocket;
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :goto_0
    monitor-enter p0

    .line 174
    :try_start_2
    iget-object v11, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v11, :cond_1

    .line 176
    :try_start_3
    iget-object v11, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 181
    :goto_1
    const/4 v11, 0x0

    :try_start_4
    iput-object v11, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;

    .line 183
    :cond_1
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 186
    if-eqz v8, :cond_2

    .line 187
    :try_start_5
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 193
    :cond_2
    :goto_2
    const-string v11, "DisplayListener"

    const-string v12, "Failed to connect to hdmi daemon"

    new-instance v13, Ljava/lang/IllegalStateException;

    invoke-direct {v13}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    return-void

    .line 160
    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v0       #address:Landroid/net/LocalSocketAddress;
    .restart local v1       #buffer:[B
    .restart local v2       #count:I
    .restart local v7       #inputStream:Ljava/io/InputStream;
    .restart local v9       #socket:Landroid/net/LocalSocket;
    :cond_3
    const/4 v10, 0x0

    .line 161
    .local v10, start:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    if-ge v6, v2, :cond_0

    .line 162
    :try_start_6
    aget-byte v11, v1, v6

    if-nez v11, :cond_4

    .line 163
    new-instance v4, Ljava/lang/String;

    sub-int v11, v6, v10

    invoke-direct {v4, v1, v10, v11}, Ljava/lang/String;-><init>([BII)V

    .line 164
    .local v4, event:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/DisplayListener;->handleEvent(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 165
    add-int/lit8 v10, v6, 0x1

    .line 161
    .end local v4           #event:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 169
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    .end local v1           #buffer:[B
    .end local v2           #count:I
    .end local v6           #i:I
    .end local v7           #inputStream:Ljava/io/InputStream;
    .end local v9           #socket:Landroid/net/LocalSocket;
    .end local v10           #start:I
    .restart local v8       #socket:Landroid/net/LocalSocket;
    :catch_0
    move-exception v5

    .line 170
    .local v5, ex:Ljava/io/IOException;
    :goto_4
    const-string v11, "DisplayListener"

    const-string v12, "Could not open listner socket"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    .end local v5           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 178
    .local v3, e:Ljava/io/IOException;
    :try_start_7
    const-string v11, "DisplayListener"

    const-string v12, "IOException closing output stream"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 183
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v11

    .line 189
    :catch_2
    move-exception v5

    .line 190
    .restart local v5       #ex:Ljava/io/IOException;
    const-string v11, "DisplayListener"

    const-string v12, "IOException closing socket"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 169
    .end local v5           #ex:Ljava/io/IOException;
    .end local v8           #socket:Landroid/net/LocalSocket;
    .restart local v9       #socket:Landroid/net/LocalSocket;
    :catch_3
    move-exception v5

    move-object v8, v9

    .end local v9           #socket:Landroid/net/LocalSocket;
    .restart local v8       #socket:Landroid/net/LocalSocket;
    goto :goto_4
.end method

.method private writeCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-object v2, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;

    if-nez v2, :cond_0

    .line 114
    const-string v2, "DisplayListener"

    const-string v3, "No connection to hdmi daemon"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    monitor-exit p0

    .line 131
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, builder:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 118
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    iget-object v2, p0, Lcom/android/server/DisplayListener;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 124
    const-string v2, "DisplayListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeCommand: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, ex:Ljava/io/IOException;
    :try_start_2
    const-string v2, "DisplayListener"

    const-string v3, "IOException in writeCommand"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 130
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public Get3DMode()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/android/server/DisplayListener;->mPanel3Dmode:I

    return v0
.end method

.method IsHDMIConnected()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIConnected:Z

    return v0
.end method

.method public IsHDMIEnable()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIEnabled:Z

    return v0
.end method

.method public changeDisplayMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 233
    const-string v0, "change_mode: "

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public clearBitmapOnHDMI(Ljava/lang/String;)I
    .locals 3
    .parameter "appname"

    .prologue
    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, ret:I
    const-string v1, "clear_bitmap"

    const-string v2, ""

    invoke-direct {p0, v1, v2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    return v0
.end method

.method public detectTVMode()I
    .locals 3

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, ret:I
    const-string v1, "detect_TV_3Dmodes"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    return v0
.end method

.method public enableHDMIOutput(ZLjava/lang/String;)V
    .locals 3
    .parameter "hdmiEnable"
    .parameter "appname"

    .prologue
    .line 217
    const-string v1, "DisplayListener"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableHDMIOutput "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v0, "On"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIEnabled:Z

    if-ne v0, p1, :cond_1

    .line 219
    const-string v0, "DisplayListener"

    const-string v1, "enableHDMIOutput ignored, unchanged!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :goto_1
    return-void

    .line 217
    :cond_0
    const-string v0, "Off"

    goto :goto_0

    .line 222
    :cond_1
    if-eqz p1, :cond_2

    .line 223
    const-string v0, "enable_hdmi"

    invoke-direct {p0, v0, p2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIEnabled:Z

    goto :goto_1

    .line 227
    :cond_2
    const-string v0, "disable_hdmi"

    invoke-direct {p0, v0, p2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DisplayListener;->mHDMIEnabled:Z

    goto :goto_1
.end method

.method public getTVMode()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/android/server/DisplayListener;->mTV3Dmode:I

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/DisplayListener;->listenToSocket()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 204
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DisplayListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in DisplayListener thread!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public set3DMode(ILjava/lang/String;)I
    .locals 4
    .parameter "Mode3D"
    .parameter "appname"

    .prologue
    .line 250
    const/4 v1, 0x1

    .line 252
    .local v1, nRet:I
    if-ltz p1, :cond_0

    const/4 v2, 0x2

    if-gt p1, v2, :cond_0

    .line 253
    iput p1, p0, Lcom/android/server/DisplayListener;->mPanel3Dmode:I

    .line 254
    packed-switch p1, :pswitch_data_0

    .line 268
    const-string v0, "switch_3Doff"

    .line 270
    .local v0, cmd:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v1, 0x0

    .line 273
    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    return v1

    .line 256
    :pswitch_0
    const-string v0, "switch_3Dlandscape"

    .line 257
    .restart local v0       #cmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    const-string v3, "com.android.settings.request.BRIGHTNESS_MAX"

    invoke-virtual {v2, v3}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 260
    .end local v0           #cmd:Ljava/lang/String;
    :pswitch_1
    const-string v0, "switch_3Dportrait"

    .line 261
    .restart local v0       #cmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    const-string v3, "com.android.settings.request.BRIGHTNESS_MAX"

    invoke-virtual {v2, v3}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 264
    .end local v0           #cmd:Ljava/lang/String;
    :pswitch_2
    const-string v0, "switch_3Doff"

    .line 265
    .restart local v0       #cmd:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/DisplayListener;->mService:Lcom/android/server/DisplayService;

    const-string v3, "com.android.settings.request.BRIGHTNESS_NORMAL"

    invoke-virtual {v2, v3}, Lcom/android/server/DisplayService;->broadcastEvent(Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setStereoDisplayMode(ILjava/lang/String;)I
    .locals 4
    .parameter "ModeDisp"
    .parameter "appname"

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, ret:I
    const-string v1, "DisplayListener"

    const-string v2, "StereoDisplay is not complete!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v1, "DisplayListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch_3Dvideo_mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " issued by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v1, "switch_3Dvideo_mode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return v0
.end method

.method public setTVMode(ILjava/lang/String;)I
    .locals 3
    .parameter "ModeTV"
    .parameter "appname"

    .prologue
    .line 281
    const/4 v1, 0x1

    .line 283
    .local v1, nRet:I
    if-ltz p1, :cond_0

    const/4 v2, 0x2

    if-gt p1, v2, :cond_0

    .line 284
    iput p1, p0, Lcom/android/server/DisplayListener;->mTV3Dmode:I

    .line 285
    packed-switch p1, :pswitch_data_0

    .line 296
    const-string v0, "switch_TV_3Doff"

    .line 298
    .local v0, cmd:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0, p2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v1, 0x0

    .line 301
    .end local v0           #cmd:Ljava/lang/String;
    :cond_0
    return v1

    .line 287
    :pswitch_0
    const-string v0, "switch_TV_3Doff"

    .line 288
    .restart local v0       #cmd:Ljava/lang/String;
    goto :goto_0

    .line 290
    .end local v0           #cmd:Ljava/lang/String;
    :pswitch_1
    const-string v0, "switch_3D_sideBySide"

    .line 291
    .restart local v0       #cmd:Ljava/lang/String;
    goto :goto_0

    .line 293
    .end local v0           #cmd:Ljava/lang/String;
    :pswitch_2
    const-string v0, "switch_3D_topBotton"

    .line 294
    .restart local v0       #cmd:Ljava/lang/String;
    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTVoutMode(ILjava/lang/String;)I
    .locals 4
    .parameter "ModeTVout"
    .parameter "appname"

    .prologue
    .line 315
    const/4 v0, 0x1

    .line 316
    .local v0, ret:I
    const-string v1, "DisplayListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switch_TVout_mode:  issued by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-ltz p1, :cond_0

    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    .line 318
    const-string v1, "switch_TVout_mode: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v0, 0x0

    .line 321
    :cond_0
    return v0
.end method

.method public showBitmapOnHDMI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "appname"
    .parameter "file"

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, ret:I
    const-string v1, "set_bitmap"

    invoke-direct {p0, v1, p2}, Lcom/android/server/DisplayListener;->writeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return v0
.end method
