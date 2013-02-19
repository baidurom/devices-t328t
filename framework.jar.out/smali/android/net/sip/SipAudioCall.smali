.class public Landroid/net/sip/SipAudioCall;
.super Ljava/lang/Object;
.source "SipAudioCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/sip/SipAudioCall$Listener;
    }
.end annotation


# static fields
.field private static final DONT_RELEASE_SOCKET:Z = false

.field private static final RELEASE_SOCKET:Z = true

.field private static final SESSION_TIMEOUT:I = 0x5

.field private static final TAG:Ljava/lang/String; = null

.field private static final TRANSFER_TIMEOUT:I = 0xf


# instance fields
.field private mAudioGroup:Landroid/net/rtp/AudioGroup;

.field private mAudioStream:Landroid/net/rtp/AudioStream;

.field private mContext:Landroid/content/Context;

.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mHold:Z

.field private mInCall:Z

.field private mListener:Landroid/net/sip/SipAudioCall$Listener;

.field private mLocalProfile:Landroid/net/sip/SipProfile;

.field private mMuted:Z

.field private mPeerSd:Ljava/lang/String;

.field private mPendingCallRequest:Landroid/net/sip/SipProfile;

.field private mSessionId:J

.field private mSipSession:Landroid/net/sip/SipSession;

.field private mTransferringSession:Landroid/net/sip/SipSession;

.field private mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWm:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Landroid/net/sip/SipAudioCall;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/sip/SipProfile;)V
    .locals 5
    .parameter "context"
    .parameter "localProfile"

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    .line 188
    iput-boolean v4, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 189
    iput-boolean v4, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    .line 190
    iput-boolean v4, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 196
    iput v4, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 205
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    .line 209
    :try_start_0
    const-string/jumbo v2, "persist.audio.SupportHTCHWAEC"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, aecprop:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 212
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const-string v3, "HTCHWAEC=ON"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v0           #aecprop:Ljava/lang/String;
    :cond_0
    :goto_0
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;

    .line 220
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    .line 221
    return-void

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open HW AEC false:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipAudioCall$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/net/sip/SipAudioCall;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    return v0
.end method

.method static synthetic access$1002(Landroid/net/sip/SipAudioCall;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    return p1
.end method

.method static synthetic access$1102(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SimpleSessionDescription;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/sip/SipAudioCall;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    return v0
.end method

.method static synthetic access$400(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/sip/SipAudioCall;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Landroid/net/sip/SipAudioCall;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Landroid/net/sip/SipAudioCall;)Landroid/net/sip/SipSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipSession;)Landroid/net/sip/SipSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/sip/SipAudioCall;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->transferToNewSession()V

    return-void
.end method

.method static synthetic access$800(Landroid/net/sip/SipAudioCall;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    return v0
.end method

.method static synthetic access$900(Landroid/net/sip/SipAudioCall;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/net/sip/SipAudioCall;->close(Z)V

    return-void
.end method

.method private declared-synchronized close(Z)V
    .locals 2
    .parameter "closeRtp"

    .prologue
    .line 320
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 322
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 323
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    .line 325
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    .line 328
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    .line 330
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    :cond_1
    monitor-exit p0

    return-void

    .line 320
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;
    .locals 22
    .parameter "offerSd"

    .prologue
    .line 769
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v4

    .line 825
    :cond_0
    return-object v4

    .line 770
    :cond_1
    new-instance v14, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .line 772
    .local v14, offer:Landroid/net/sip/SimpleSessionDescription;
    new-instance v4, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    move-wide/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v20

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 774
    .local v4, answer:Landroid/net/sip/SimpleSessionDescription;
    const/4 v7, 0x0

    .line 775
    .local v7, codec:Landroid/net/rtp/AudioCodec;
    invoke-virtual {v14}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    .local v5, arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    array-length v11, v5

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    move v10, v9

    .end local v5           #arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v9           #i$:I
    .end local v11           #len$:I
    .local v10, i$:I
    :goto_0
    if-ge v10, v11, :cond_b

    aget-object v13, v5, v10

    .line 776
    .local v13, media:Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v7, :cond_a

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v18

    if-lez v18, :cond_a

    const-string v18, "audio"

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    const-string v18, "RTP/AVP"

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 780
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v6

    .local v6, arr$:[I
    array-length v12, v6

    .local v12, len$:I
    const/4 v9, 0x0

    .end local v10           #i$:I
    .restart local v9       #i$:I
    :goto_1
    if-ge v9, v12, :cond_2

    aget v17, v6, v9

    .line 781
    .local v17, type:I
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v19}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    move-result-object v7

    .line 783
    if-eqz v7, :cond_4

    .line 787
    .end local v17           #type:I
    :cond_2
    if-eqz v7, :cond_a

    .line 788
    const-string v18, "audio"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v19

    const/16 v20, 0x1

    const-string v21, "RTP/AVP"

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v15

    .line 790
    .local v15, reply:Landroid/net/sip/SimpleSessionDescription$Media;
    iget v0, v7, Landroid/net/rtp/AudioCodec;->type:I

    move/from16 v18, v0

    iget-object v0, v7, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v15, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 793
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v6

    array-length v12, v6

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v12, :cond_5

    aget v17, v6, v9

    .line 794
    .restart local v17       #type:I
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v16

    .line 795
    .local v16, rtpmap:Ljava/lang/String;
    iget v0, v7, Landroid/net/rtp/AudioCodec;->type:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    if-eqz v16, :cond_3

    const-string/jumbo v18, "telephone-event"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 797
    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v18

    move/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-virtual {v15, v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 793
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 780
    .end local v15           #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v16           #rtpmap:Ljava/lang/String;
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 803
    .end local v17           #type:I
    .restart local v15       #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_5
    const-string/jumbo v18, "recvonly"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 804
    const-string/jumbo v18, "sendonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .end local v6           #arr$:[I
    :cond_6
    :goto_3
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    .end local v9           #i$:I
    .restart local v10       #i$:I
    goto/16 :goto_0

    .line 805
    .end local v10           #i$:I
    .restart local v6       #arr$:[I
    .restart local v9       #i$:I
    :cond_7
    const-string/jumbo v18, "sendonly"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_8

    .line 806
    const-string/jumbo v18, "recvonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 807
    :cond_8
    const-string/jumbo v18, "recvonly"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 808
    const-string/jumbo v18, "sendonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 809
    :cond_9
    const-string/jumbo v18, "sendonly"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_6

    .line 810
    const-string/jumbo v18, "recvonly"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 816
    .end local v6           #arr$:[I
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v15           #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_a
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v15

    .line 818
    .restart local v15       #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-virtual {v13}, Landroid/net/sip/SimpleSessionDescription$Media;->getFormats()[Ljava/lang/String;

    move-result-object v6

    .local v6, arr$:[Ljava/lang/String;
    array-length v12, v6

    .restart local v12       #len$:I
    const/4 v9, 0x0

    .restart local v9       #i$:I
    :goto_4
    if-ge v9, v12, :cond_6

    aget-object v8, v6, v9

    .line 819
    .local v8, format:Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v15, v8, v0}, Landroid/net/sip/SimpleSessionDescription$Media;->setFormat(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 822
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v8           #format:Ljava/lang/String;
    .end local v9           #i$:I
    .end local v12           #len$:I
    .end local v13           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v15           #reply:Landroid/net/sip/SimpleSessionDescription$Media;
    .restart local v10       #i$:I
    :cond_b
    if-nez v7, :cond_0

    .line 823
    new-instance v18, Ljava/lang/IllegalStateException;

    const-string v19, "Reject SDP: no suitable codecs"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18
.end method

.method private createContinueOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 8

    .prologue
    .line 835
    new-instance v3, Landroid/net/sip/SimpleSessionDescription;

    iget-wide v4, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 837
    .local v3, offer:Landroid/net/sip/SimpleSessionDescription;
    const-string v4, "audio"

    iget-object v5, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v5}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v5

    const/4 v6, 0x1

    const-string v7, "RTP/AVP"

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v2

    .line 839
    .local v2, media:Landroid/net/sip/SimpleSessionDescription$Media;
    iget-object v4, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v4}, Landroid/net/rtp/AudioStream;->getCodec()Landroid/net/rtp/AudioCodec;

    move-result-object v0

    .line 840
    .local v0, codec:Landroid/net/rtp/AudioCodec;
    iget v4, v0, Landroid/net/rtp/AudioCodec;->type:I

    iget-object v5, v0, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v6, v0, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v4, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v4}, Landroid/net/rtp/AudioStream;->getDtmfType()I

    move-result v1

    .line 842
    .local v1, dtmfType:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 843
    const-string/jumbo v4, "telephone-event/8000"

    const-string v5, "0-15"

    invoke-virtual {v2, v1, v4, v5}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_0
    return-object v3
.end method

.method private createHoldOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 3

    .prologue
    .line 829
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v0

    .line 830
    .local v0, offer:Landroid/net/sip/SimpleSessionDescription;
    const-string/jumbo v1, "sendonly"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/net/sip/SimpleSessionDescription;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    return-object v0
.end method

.method private createListener()Landroid/net/sip/SipSession$Listener;
    .locals 1

    .prologue
    .line 404
    new-instance v0, Landroid/net/sip/SipAudioCall$1;

    invoke-direct {v0, p0}, Landroid/net/sip/SipAudioCall$1;-><init>(Landroid/net/sip/SipAudioCall;)V

    return-object v0
.end method

.method private createOffer()Landroid/net/sip/SimpleSessionDescription;
    .locals 11

    .prologue
    .line 756
    new-instance v6, Landroid/net/sip/SimpleSessionDescription;

    iget-wide v7, p0, Landroid/net/sip/SipAudioCall;->mSessionId:J

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription;-><init>(JLjava/lang/String;)V

    .line 758
    .local v6, offer:Landroid/net/sip/SimpleSessionDescription;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    move-result-object v2

    .line 759
    .local v2, codecs:[Landroid/net/rtp/AudioCodec;
    const-string v7, "audio"

    iget-object v8, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v8}, Landroid/net/rtp/AudioStream;->getLocalPort()I

    move-result v8

    const/4 v9, 0x1

    const-string v10, "RTP/AVP"

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/net/sip/SimpleSessionDescription;->newMedia(Ljava/lang/String;IILjava/lang/String;)Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v5

    .line 761
    .local v5, media:Landroid/net/sip/SimpleSessionDescription$Media;
    invoke-static {}, Landroid/net/rtp/AudioCodec;->getCodecs()[Landroid/net/rtp/AudioCodec;

    move-result-object v0

    .local v0, arr$:[Landroid/net/rtp/AudioCodec;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 762
    .local v1, codec:Landroid/net/rtp/AudioCodec;
    iget v7, v1, Landroid/net/rtp/AudioCodec;->type:I

    iget-object v8, v1, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iget-object v9, v1, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    invoke-virtual {v5, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 761
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 764
    .end local v1           #codec:Landroid/net/rtp/AudioCodec;
    :cond_0
    const/16 v7, 0x7f

    const-string/jumbo v8, "telephone-event/8000"

    const-string v9, "0-15"

    invoke-virtual {v5, v7, v8, v9}, Landroid/net/sip/SimpleSessionDescription$Media;->setRtpPayload(ILjava/lang/String;Ljava/lang/String;)V

    .line 765
    return-object v6
.end method

.method private getLocalIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getLocalIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPeerProfile(Landroid/net/sip/SipSession;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "session"

    .prologue
    .line 1146
    invoke-virtual {p1}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private grabWifiHighPerfLock()V
    .locals 3

    .prologue
    .line 849
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v0, :cond_0

    .line 850
    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string v1, "acquire wifi high perf lock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x3

    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 854
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 856
    :cond_0
    return-void
.end method

.method private isSpeakerOn()Z
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private isWifiOn()Z
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWm:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onError(ILjava/lang/String;)V
    .locals 5
    .parameter "errorCode"
    .parameter "message"

    .prologue
    .line 587
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sip session error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/net/sip/SipErrorCode;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iput p1, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    .line 590
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    .line 591
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    .line 592
    .local v0, listener:Landroid/net/sip/SipAudioCall$Listener;
    if-eqz v0, :cond_0

    .line 594
    :try_start_0
    invoke-virtual {v0, p0, p1, p2}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_0
    :goto_0
    monitor-enter p0

    .line 600
    const/16 v2, -0xa

    if-eq p1, v2, :cond_1

    :try_start_1
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->isInCall()Z

    move-result v2

    if-nez v2, :cond_2

    .line 602
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->close(Z)V

    .line 604
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    return-void

    .line 595
    :catch_0
    move-exception v1

    .line 596
    .local v1, t:Ljava/lang/Throwable;
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onError(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    .end local v1           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private releaseWifiHighPerfLock()V
    .locals 2

    .prologue
    .line 859
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_0

    .line 860
    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "release wifi high perf lock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 862
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/sip/SipAudioCall;->mWifiHighPerfLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 864
    :cond_0
    return-void
.end method

.method private setAudioGroupMode()V
    .locals 2

    .prologue
    .line 1106
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 1107
    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    if-eqz v0, :cond_0

    .line 1108
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v1, :cond_1

    .line 1109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    .line 1118
    :cond_0
    :goto_0
    return-void

    .line 1110
    :cond_1
    iget-boolean v1, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    if-eqz v1, :cond_2

    .line 1111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    .line 1112
    :cond_2
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->isSpeakerOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1113
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0

    .line 1115
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/rtp/AudioGroup;->setMode(I)V

    goto :goto_0
.end method

.method private declared-synchronized startAudioInternal()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 1022
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    if-nez v15, :cond_0

    .line 1023
    sget-object v15, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "startAudioInternal() mPeerSd = null"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string/jumbo v16, "mPeerSd = null"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 1027
    :cond_0
    const/4 v15, 0x0

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 1028
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 1031
    new-instance v11, Landroid/net/sip/SimpleSessionDescription;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-direct {v11, v15}, Landroid/net/sip/SimpleSessionDescription;-><init>(Ljava/lang/String;)V

    .line 1033
    .local v11, offer:Landroid/net/sip/SimpleSessionDescription;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 1034
    .local v13, stream:Landroid/net/rtp/AudioStream;
    const/4 v5, 0x0

    .line 1035
    .local v5, codec:Landroid/net/rtp/AudioCodec;
    invoke-virtual {v11}, Landroid/net/sip/SimpleSessionDescription;->getMedia()[Landroid/net/sip/SimpleSessionDescription$Media;

    move-result-object v2

    .local v2, arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    array-length v8, v2

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v2           #arr$:[Landroid/net/sip/SimpleSessionDescription$Media;
    .end local v6           #i$:I
    .end local v8           #len$:I
    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_6

    aget-object v10, v2, v7

    .line 1036
    .local v10, media:Landroid/net/sip/SimpleSessionDescription$Media;
    if-nez v5, :cond_c

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v15

    if-lez v15, :cond_c

    const-string v15, "audio"

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getType()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    const-string v15, "RTP/AVP"

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getProtocol()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 1040
    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v3

    .local v3, arr$:[I
    array-length v9, v3

    .local v9, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_1
    if-ge v6, v9, :cond_1

    aget v14, v3, v6

    .line 1041
    .local v14, type:I
    invoke-virtual {v10, v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getFmtp(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/net/rtp/AudioCodec;->getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;

    move-result-object v5

    .line 1043
    if-eqz v5, :cond_4

    .line 1048
    .end local v14           #type:I
    :cond_1
    if-eqz v5, :cond_c

    .line 1050
    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1051
    .local v1, address:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1052
    invoke-virtual {v11}, Landroid/net/sip/SimpleSessionDescription;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1054
    :cond_2
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getPort()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/net/rtp/AudioStream;->associate(Ljava/net/InetAddress;I)V

    .line 1057
    const/4 v15, -0x1

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    .line 1058
    invoke-virtual {v13, v5}, Landroid/net/rtp/AudioStream;->setCodec(Landroid/net/rtp/AudioCodec;)V

    .line 1060
    invoke-virtual {v10}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpPayloadTypes()[I

    move-result-object v2

    .end local v3           #arr$:[I
    .local v2, arr$:[I
    array-length v8, v2

    .end local v9           #len$:I
    .restart local v8       #len$:I
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_5

    aget v14, v2, v6

    .line 1061
    .restart local v14       #type:I
    invoke-virtual {v10, v14}, Landroid/net/sip/SimpleSessionDescription$Media;->getRtpmap(I)Ljava/lang/String;

    move-result-object v12

    .line 1062
    .local v12, rtpmap:Ljava/lang/String;
    iget v15, v5, Landroid/net/rtp/AudioCodec;->type:I

    if-eq v14, v15, :cond_3

    if-eqz v12, :cond_3

    const-string/jumbo v15, "telephone-event"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1064
    invoke-virtual {v13, v14}, Landroid/net/rtp/AudioStream;->setDtmfType(I)V

    .line 1060
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1040
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #arr$:[I
    .end local v8           #len$:I
    .end local v12           #rtpmap:Ljava/lang/String;
    .restart local v3       #arr$:[I
    .restart local v9       #len$:I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1069
    .end local v3           #arr$:[I
    .end local v9           #len$:I
    .end local v14           #type:I
    .restart local v1       #address:Ljava/lang/String;
    .restart local v2       #arr$:[I
    .restart local v8       #len$:I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v15, :cond_7

    .line 1070
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    .line 1086
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #arr$:[I
    .end local v6           #i$:I
    .end local v8           #len$:I
    .end local v10           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_6
    :goto_3
    if-nez v5, :cond_d

    .line 1087
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Reject SDP: no suitable codecs"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 1071
    .restart local v1       #address:Ljava/lang/String;
    .restart local v2       #arr$:[I
    .restart local v6       #i$:I
    .restart local v8       #len$:I
    .restart local v10       #media:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_7
    const-string/jumbo v15, "recvonly"

    invoke-virtual {v10, v15}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    .line 1072
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1073
    :cond_8
    const-string/jumbo v15, "sendonly"

    invoke-virtual {v10, v15}, Landroid/net/sip/SimpleSessionDescription$Media;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 1074
    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1075
    :cond_9
    const-string/jumbo v15, "recvonly"

    invoke-virtual {v11, v15}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 1076
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1077
    :cond_a
    const-string/jumbo v15, "sendonly"

    invoke-virtual {v11, v15}, Landroid/net/sip/SimpleSessionDescription;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_b

    .line 1078
    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1080
    :cond_b
    const/4 v15, 0x0

    invoke-virtual {v13, v15}, Landroid/net/rtp/AudioStream;->setMode(I)V

    goto :goto_3

    .line 1035
    .end local v1           #address:Ljava/lang/String;
    .end local v2           #arr$:[I
    .end local v6           #i$:I
    .end local v8           #len$:I
    :cond_c
    add-int/lit8 v6, v7, 0x1

    .restart local v6       #i$:I
    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto/16 :goto_0

    .line 1090
    .end local v7           #i$:I
    .end local v10           #media:Landroid/net/sip/SimpleSessionDescription$Media;
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->isWifiOn()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->grabWifiHighPerfLock()V

    .line 1093
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v4

    .line 1094
    .local v4, audioGroup:Landroid/net/rtp/AudioGroup;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v15, :cond_f

    .line 1101
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1102
    monitor-exit p0

    return-void

    .line 1098
    :cond_f
    if-nez v4, :cond_10

    :try_start_2
    new-instance v4, Landroid/net/rtp/AudioGroup;

    .end local v4           #audioGroup:Landroid/net/rtp/AudioGroup;
    invoke-direct {v4}, Landroid/net/rtp/AudioGroup;-><init>()V

    .line 1099
    .restart local v4       #audioGroup:Landroid/net/rtp/AudioGroup;
    :cond_10
    invoke-virtual {v13, v4}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private stopCall(Z)V
    .locals 3
    .parameter "releaseSocket"

    .prologue
    const/4 v2, 0x0

    .line 1121
    sget-object v0, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop audiocall"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->releaseWifiHighPerfLock()V

    .line 1123
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0, v2}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 1126
    if-eqz p1, :cond_0

    .line 1127
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->release()V

    .line 1128
    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 1131
    :cond_0
    return-void
.end method

.method private throwSipException(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "throwable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 1138
    instance-of v0, p1, Landroid/net/sip/SipException;

    if-eqz v0, :cond_0

    .line 1139
    check-cast p1, Landroid/net/sip/SipException;

    .end local p1
    throw p1

    .line 1141
    .restart local p1
    :cond_0
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private declared-synchronized transferToNewSession()V
    .locals 5

    .prologue
    .line 383
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 401
    :goto_0
    monitor-exit p0

    return-void

    .line 384
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    .line 385
    .local v0, origin:Landroid/net/sip/SipSession;
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    .line 386
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mTransferringSession:Landroid/net/sip/SipSession;

    .line 389
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v2, :cond_2

    .line 390
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 399
    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->endCall()V

    .line 400
    :cond_1
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->startAudio()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    .end local v0           #origin:Landroid/net/sip/SipSession;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 393
    .restart local v0       #origin:Landroid/net/sip/SipSession;
    :cond_2
    :try_start_2
    new-instance v2, Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v2, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, t:Ljava/lang/Throwable;
    :try_start_3
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transferToNewSession(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public answerCall(I)V
    .locals 3
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 720
    monitor-enter p0

    .line 721
    :try_start_0
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v1, :cond_0

    .line 722
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "No call to answer"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 731
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 725
    :cond_0
    :try_start_1
    new-instance v1, Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 727
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/net/sip/SipAudioCall;->createAnswer(Ljava/lang/String;)Landroid/net/sip/SimpleSessionDescription;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/net/sip/SipSession;->answerCall(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 731
    :try_start_2
    monitor-exit p0

    .line 732
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "answerCall()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public attachCall(Landroid/net/sip/SipSession;Ljava/lang/String;)V
    .locals 4
    .parameter "session"
    .parameter "sessionDescription"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 618
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    :cond_0
    monitor-enter p0

    .line 623
    :try_start_0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    .line 624
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    .line 625
    sget-object v1, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attachCall()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/sip/SipAudioCall;->mPeerSd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    :try_start_1
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 632
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 633
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, e:Ljava/lang/Throwable;
    sget-object v1, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string v2, "attachCall()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->throwSipException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 632
    .end local v0           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 305
    invoke-direct {p0, v4}, Landroid/net/sip/SipAudioCall;->close(Z)V

    .line 308
    :try_start_0
    const-string/jumbo v2, "persist.audio.SupportHTCHWAEC"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, aecprop:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 311
    iget-object v2, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    const-string v3, "HTCHWAEC=OFF"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v0           #aecprop:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close HW AEC false:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public continueCall(I)V
    .locals 2
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 747
    monitor-enter p0

    .line 748
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 753
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createContinueOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    .line 750
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 751
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 752
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 675
    monitor-enter p0

    .line 676
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Landroid/net/sip/SipAudioCall;->stopCall(Z)V

    .line 677
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    .line 680
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->endCall()V

    .line 681
    :cond_0
    monitor-exit p0

    .line 682
    return-void

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAudioGroup()Landroid/net/rtp/AudioGroup;
    .locals 1

    .prologue
    .line 976
    monitor-enter p0

    .line 977
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    monitor-exit p0

    .line 978
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 979
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 978
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method public getAudioStream()Landroid/net/rtp/AudioStream;
    .locals 1

    .prologue
    .line 956
    monitor-enter p0

    .line 957
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    monitor-exit p0

    return-object v0

    .line 958
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLocalProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 340
    monitor-enter p0

    .line 341
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mLocalProfile:Landroid/net/sip/SipProfile;

    monitor-exit p0

    return-object v0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPeerProfile()Landroid/net/sip/SipProfile;
    .locals 1

    .prologue
    .line 351
    monitor-enter p0

    .line 352
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSipSession()Landroid/net/sip/SipSession;
    .locals 1

    .prologue
    .line 377
    monitor-enter p0

    .line 378
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    monitor-exit p0

    return-object v0

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 363
    monitor-enter p0

    .line 364
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    .line 365
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-virtual {v0}, Landroid/net/sip/SipSession;->getState()I

    move-result v0

    monitor-exit p0

    goto :goto_0

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public holdCall(I)V
    .locals 2
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 697
    monitor-enter p0

    .line 698
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 706
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-nez v0, :cond_1

    .line 700
    new-instance v0, Landroid/net/sip/SipException;

    const-string v1, "Not in a call to hold call"

    invoke-direct {v0, v1}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 702
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createHoldOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/net/sip/SipSession;->changeCall(Ljava/lang/String;I)V

    .line 703
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    .line 704
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 705
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isInCall()Z
    .locals 1

    .prologue
    .line 285
    monitor-enter p0

    .line 286
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    monitor-exit p0

    return v0

    .line 287
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 884
    monitor-enter p0

    .line 885
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    monitor-exit p0

    return v0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOnHold()Z
    .locals 1

    .prologue
    .line 296
    monitor-enter p0

    .line 297
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    monitor-exit p0

    return v0

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public makeCall(Landroid/net/sip/SipProfile;Landroid/net/sip/SipSession;I)V
    .locals 3
    .parameter "peerProfile"
    .parameter "sipSession"
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/sip/SipException;
        }
    .end annotation

    .prologue
    .line 652
    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    new-instance v1, Landroid/net/sip/SipException;

    const-string v2, "VOIP API is not supported"

    invoke-direct {v1, v2}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 656
    :cond_0
    monitor-enter p0

    .line 657
    :try_start_0
    iput-object p2, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    :try_start_1
    new-instance v1, Landroid/net/rtp/AudioStream;

    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->getLocalIp()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/rtp/AudioStream;-><init>(Ljava/net/InetAddress;)V

    iput-object v1, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    .line 661
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createListener()Landroid/net/sip/SipSession$Listener;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/sip/SipSession;->setListener(Landroid/net/sip/SipSession$Listener;)V

    .line 662
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->createOffer()Landroid/net/sip/SimpleSessionDescription;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/sip/SimpleSessionDescription;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1, p3}, Landroid/net/sip/SipSession;->makeCall(Landroid/net/sip/SipProfile;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 667
    :try_start_2
    monitor-exit p0

    .line 668
    return-void

    .line 664
    :catch_0
    move-exception v0

    .line 665
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Landroid/net/sip/SipException;

    const-string/jumbo v2, "makeCall()"

    invoke-direct {v1, v2, v0}, Landroid/net/sip/SipException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 667
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public sendDtmf(I)V
    .locals 1
    .parameter "code"

    .prologue
    .line 919
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->sendDtmf(ILandroid/os/Message;)V

    .line 920
    return-void
.end method

.method public sendDtmf(ILandroid/os/Message;)V
    .locals 4
    .parameter "code"
    .parameter "result"

    .prologue
    .line 933
    monitor-enter p0

    .line 934
    :try_start_0
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getAudioGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    .line 935
    .local v0, audioGroup:Landroid/net/rtp/AudioGroup;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/net/sip/SipAudioCall;->mSipSession:Landroid/net/sip/SipSession;

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 937
    sget-object v1, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send DTMF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-virtual {v0, p1}, Landroid/net/rtp/AudioGroup;->sendDtmf(I)V

    .line 940
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 941
    :cond_1
    monitor-exit p0

    .line 942
    return-void

    .line 941
    .end local v0           #audioGroup:Landroid/net/rtp/AudioGroup;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAudioGroup(Landroid/net/rtp/AudioGroup;)V
    .locals 1
    .parameter "group"

    .prologue
    .line 995
    monitor-enter p0

    .line 996
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0}, Landroid/net/rtp/AudioStream;->getGroup()Landroid/net/rtp/AudioGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 997
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mAudioStream:Landroid/net/rtp/AudioStream;

    invoke-virtual {v0, p1}, Landroid/net/rtp/AudioStream;->join(Landroid/net/rtp/AudioGroup;)V

    .line 999
    :cond_0
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mAudioGroup:Landroid/net/rtp/AudioGroup;

    .line 1000
    monitor-exit p0

    .line 1001
    return-void

    .line 1000
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setListener(Landroid/net/sip/SipAudioCall$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/sip/SipAudioCall;->setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V

    .line 232
    return-void
.end method

.method public setListener(Landroid/net/sip/SipAudioCall$Listener;Z)V
    .locals 4
    .parameter "listener"
    .parameter "callbackImmediately"

    .prologue
    .line 245
    iput-object p1, p0, Landroid/net/sip/SipAudioCall;->mListener:Landroid/net/sip/SipAudioCall$Listener;

    .line 247
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    :try_start_0
    iget v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    if-eqz v2, :cond_2

    .line 250
    iget v2, p0, Landroid/net/sip/SipAudioCall;->mErrorCode:I

    iget-object v3, p0, Landroid/net/sip/SipAudioCall;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, p0, v2, v3}, Landroid/net/sip/SipAudioCall$Listener;->onError(Landroid/net/sip/SipAudioCall;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v1

    .line 275
    .local v1, t:Ljava/lang/Throwable;
    sget-object v2, Landroid/net/sip/SipAudioCall;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setListener()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mInCall:Z

    if-eqz v2, :cond_4

    .line 252
    iget-boolean v2, p0, Landroid/net/sip/SipAudioCall;->mHold:Z

    if-eqz v2, :cond_3

    .line 253
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallHeld(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 255
    :cond_3
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCallEstablished(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 258
    :cond_4
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getState()I

    move-result v0

    .line 259
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 261
    :pswitch_1
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onReadyToCall(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/sip/SipAudioCall;->getPeerProfile()Landroid/net/sip/SipProfile;

    move-result-object v2

    invoke-virtual {p1, p0, v2}, Landroid/net/sip/SipAudioCall$Listener;->onRinging(Landroid/net/sip/SipAudioCall;Landroid/net/sip/SipProfile;)V

    goto :goto_0

    .line 267
    :pswitch_3
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onCalling(Landroid/net/sip/SipAudioCall;)V

    goto :goto_0

    .line 270
    :pswitch_4
    invoke-virtual {p1, p0}, Landroid/net/sip/SipAudioCall$Listener;->onRingingBack(Landroid/net/sip/SipAudioCall;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 259
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setSpeakerMode(Z)V
    .locals 2
    .parameter "speakerMode"

    .prologue
    .line 897
    monitor-enter p0

    .line 898
    :try_start_0
    iget-object v0, p0, Landroid/net/sip/SipAudioCall;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 900
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 901
    monitor-exit p0

    .line 902
    return-void

    .line 901
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startAudio()V
    .locals 3

    .prologue
    .line 1013
    :try_start_0
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->startAudioInternal()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1019
    :goto_0
    return-void

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    .local v0, e:Ljava/net/UnknownHostException;
    const/4 v1, -0x7

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    goto :goto_0

    .line 1016
    .end local v0           #e:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v0

    .line 1017
    .local v0, e:Ljava/lang/Throwable;
    const/4 v1, -0x4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/net/sip/SipAudioCall;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public toggleMute()V
    .locals 1

    .prologue
    .line 872
    monitor-enter p0

    .line 873
    :try_start_0
    iget-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/net/sip/SipAudioCall;->mMuted:Z

    .line 874
    invoke-direct {p0}, Landroid/net/sip/SipAudioCall;->setAudioGroupMode()V

    .line 875
    monitor-exit p0

    .line 876
    return-void

    .line 873
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 875
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
