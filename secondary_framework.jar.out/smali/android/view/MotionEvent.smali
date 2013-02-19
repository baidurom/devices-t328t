.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$PointerCoords;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_HOVER_ENTER:I = 0x9

.field public static final ACTION_HOVER_EXIT:I = 0xa

.field public static final ACTION_HOVER_MOVE:I = 0x7

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_PEN_BUTTON_DOWN:I = 0x5

.field public static final ACTION_PEN_BUTTON_ID_MASK:I = 0xff00

.field public static final ACTION_PEN_BUTTON_ID_SHIFT:I = 0x8

.field public static final ACTION_PEN_BUTTON_UP:I = 0x6

.field public static final ACTION_PEN_HOVER:I = 0x9

.field public static final ACTION_PEN_HOVER_ENTER:I = 0x7

.field public static final ACTION_PEN_HOVER_LEAVE:I = 0x8

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_SCROLL:I = 0x8

.field public static final ACTION_UP:I = 0x1

.field public static final AXIS_BRAKE:I = 0x17

.field public static final AXIS_DISTANCE:I = 0x18

.field public static final AXIS_GAS:I = 0x16

.field public static final AXIS_GENERIC_1:I = 0x20

.field public static final AXIS_GENERIC_10:I = 0x29

.field public static final AXIS_GENERIC_11:I = 0x2a

.field public static final AXIS_GENERIC_12:I = 0x2b

.field public static final AXIS_GENERIC_13:I = 0x2c

.field public static final AXIS_GENERIC_14:I = 0x2d

.field public static final AXIS_GENERIC_15:I = 0x2e

.field public static final AXIS_GENERIC_16:I = 0x2f

.field public static final AXIS_GENERIC_2:I = 0x21

.field public static final AXIS_GENERIC_3:I = 0x22

.field public static final AXIS_GENERIC_4:I = 0x23

.field public static final AXIS_GENERIC_5:I = 0x24

.field public static final AXIS_GENERIC_6:I = 0x25

.field public static final AXIS_GENERIC_7:I = 0x26

.field public static final AXIS_GENERIC_8:I = 0x27

.field public static final AXIS_GENERIC_9:I = 0x28

.field public static final AXIS_HAT_X:I = 0xf

.field public static final AXIS_HAT_Y:I = 0x10

.field public static final AXIS_HSCROLL:I = 0xa

.field public static final AXIS_LTRIGGER:I = 0x11

.field public static final AXIS_ORIENTATION:I = 0x8

.field public static final AXIS_PRESSURE:I = 0x2

.field public static final AXIS_RTRIGGER:I = 0x12

.field public static final AXIS_RUDDER:I = 0x14

.field public static final AXIS_RX:I = 0xc

.field public static final AXIS_RY:I = 0xd

.field public static final AXIS_RZ:I = 0xe

.field public static final AXIS_SIZE:I = 0x3

.field private static final AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final AXIS_THROTTLE:I = 0x13

.field public static final AXIS_TILT:I = 0x19

.field public static final AXIS_TOOL_MAJOR:I = 0x6

.field public static final AXIS_TOOL_MINOR:I = 0x7

.field public static final AXIS_TOUCH_MAJOR:I = 0x4

.field public static final AXIS_TOUCH_MINOR:I = 0x5

.field public static final AXIS_VSCROLL:I = 0x9

.field public static final AXIS_WHEEL:I = 0x15

.field public static final AXIS_X:I = 0x0

.field public static final AXIS_Y:I = 0x1

.field public static final AXIS_Z:I = 0xb

.field public static final BUTTON_BACK:I = 0x8

.field public static final BUTTON_FORWARD:I = 0x10

.field public static final BUTTON_PRIMARY:I = 0x1

.field public static final BUTTON_SECONDARY:I = 0x2

.field private static final BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String; = null

.field public static final BUTTON_TERTIARY:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_TAINTED:I = -0x80000000

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field private static final HISTORY_CURRENT:I = -0x80000000

.field public static final INVALID_POINTER_ID:I = -0x1

.field private static final MAX_RECYCLED:I = 0xa

.field public static final META_PEN_ERASER_ON:I = 0x2

.field public static final META_PEN_HIGHLIGHT_ON:I = 0x1

.field public static final META_PEN_TXT_SEL_ON:I = 0x4

.field private static final NS_PER_MS:J = 0xf4240L

.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_STYLUS:I = 0x2

.field private static final TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOOL_TYPE_UNKNOWN:I

.field private static final TRACK_RECYCLED_LOCATION:Z

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I

.field private static final gSharedTempLock:Ljava/lang/Object;

.field private static gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static gSharedTempPointerIndexMap:[I

.field private static gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mNativePtr:I

.field private mNext:Landroid/view/MotionEvent;

.field private mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1180
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1182
    sget-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1183
    .local v0, names:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string v1, "AXIS_X"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1184
    const-string v1, "AXIS_Y"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1185
    const-string v1, "AXIS_PRESSURE"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1186
    const-string v1, "AXIS_SIZE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1187
    const-string v1, "AXIS_TOUCH_MAJOR"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1188
    const/4 v1, 0x5

    const-string v2, "AXIS_TOUCH_MINOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1189
    const/4 v1, 0x6

    const-string v2, "AXIS_TOOL_MAJOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1190
    const/4 v1, 0x7

    const-string v2, "AXIS_TOOL_MINOR"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1191
    const/16 v1, 0x8

    const-string v2, "AXIS_ORIENTATION"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1192
    const/16 v1, 0x9

    const-string v2, "AXIS_VSCROLL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1193
    const/16 v1, 0xa

    const-string v2, "AXIS_HSCROLL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1194
    const/16 v1, 0xb

    const-string v2, "AXIS_Z"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1195
    const/16 v1, 0xc

    const-string v2, "AXIS_RX"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1196
    const/16 v1, 0xd

    const-string v2, "AXIS_RY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1197
    const/16 v1, 0xe

    const-string v2, "AXIS_RZ"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1198
    const/16 v1, 0xf

    const-string v2, "AXIS_HAT_X"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1199
    const/16 v1, 0x10

    const-string v2, "AXIS_HAT_Y"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1200
    const/16 v1, 0x11

    const-string v2, "AXIS_LTRIGGER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1201
    const/16 v1, 0x12

    const-string v2, "AXIS_RTRIGGER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1202
    const/16 v1, 0x13

    const-string v2, "AXIS_THROTTLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1203
    const/16 v1, 0x14

    const-string v2, "AXIS_RUDDER"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1204
    const/16 v1, 0x15

    const-string v2, "AXIS_WHEEL"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1205
    const/16 v1, 0x16

    const-string v2, "AXIS_GAS"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1206
    const/16 v1, 0x17

    const-string v2, "AXIS_BRAKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1207
    const/16 v1, 0x18

    const-string v2, "AXIS_DISTANCE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1208
    const/16 v1, 0x19

    const-string v2, "AXIS_TILT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1209
    const/16 v1, 0x20

    const-string v2, "AXIS_GENERIC_1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1210
    const/16 v1, 0x21

    const-string v2, "AXIS_GENERIC_2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1211
    const/16 v1, 0x22

    const-string v2, "AXIS_GENERIC_3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1212
    const/16 v1, 0x23

    const-string v2, "AXIS_GENERIC_4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1213
    const/16 v1, 0x24

    const-string v2, "AXIS_GENERIC_5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1214
    const/16 v1, 0x25

    const-string v2, "AXIS_GENERIC_6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1215
    const/16 v1, 0x26

    const-string v2, "AXIS_GENERIC_7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1216
    const/16 v1, 0x27

    const-string v2, "AXIS_GENERIC_8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1217
    const/16 v1, 0x28

    const-string v2, "AXIS_GENERIC_9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1218
    const/16 v1, 0x29

    const-string v2, "AXIS_GENERIC_10"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1219
    const/16 v1, 0x2a

    const-string v2, "AXIS_GENERIC_11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1220
    const/16 v1, 0x2b

    const-string v2, "AXIS_GENERIC_12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1221
    const/16 v1, 0x2c

    const-string v2, "AXIS_GENERIC_13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1222
    const/16 v1, 0x2d

    const-string v2, "AXIS_GENERIC_14"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1223
    const/16 v1, 0x2e

    const-string v2, "AXIS_GENERIC_15"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1224
    const/16 v1, 0x2f

    const-string v2, "AXIS_GENERIC_16"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1278
    const/16 v1, 0x20

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "BUTTON_PRIMARY"

    aput-object v2, v1, v4

    const-string v2, "BUTTON_SECONDARY"

    aput-object v2, v1, v5

    const-string v2, "BUTTON_TERTIARY"

    aput-object v2, v1, v6

    const-string v2, "BUTTON_BACK"

    aput-object v2, v1, v7

    const-string v2, "BUTTON_FORWARD"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "0x00000020"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "0x00000040"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "0x00000080"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "0x00000100"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "0x00000200"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "0x00000400"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "0x00000800"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "0x00001000"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "0x00002000"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "0x00004000"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "0x00008000"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "0x00010000"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "0x00020000"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "0x00040000"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "0x00080000"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "0x00100000"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "0x00200000"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "0x00400000"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "0x00800000"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "0x01000000"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "0x02000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "0x04000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "0x08000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "0x10000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "0x20000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "0x40000000"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "0x80000000"

    aput-object v3, v1, v2

    sput-object v1, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    .line 1354
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1356
    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    .line 1357
    const-string v1, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1358
    const-string v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1359
    const-string v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1360
    const-string v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1361
    const-string v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1368
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 1374
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    .line 3121
    new-instance v1, Landroid/view/MotionEvent$1;

    invoke-direct {v1}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1453
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 1454
    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 3
    .parameter "action"

    .prologue
    .line 3002
    packed-switch p0, :pswitch_data_0

    .line 3022
    :pswitch_0
    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x8

    .line 3023
    .local v0, index:I
    and-int/lit16 v1, p0, 0xff

    packed-switch v1, :pswitch_data_1

    .line 3029
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .end local v0           #index:I
    :goto_0
    return-object v1

    .line 3004
    :pswitch_1
    const-string v1, "ACTION_DOWN"

    goto :goto_0

    .line 3006
    :pswitch_2
    const-string v1, "ACTION_UP"

    goto :goto_0

    .line 3008
    :pswitch_3
    const-string v1, "ACTION_CANCEL"

    goto :goto_0

    .line 3010
    :pswitch_4
    const-string v1, "ACTION_OUTSIDE"

    goto :goto_0

    .line 3012
    :pswitch_5
    const-string v1, "ACTION_MOVE"

    goto :goto_0

    .line 3014
    :pswitch_6
    const-string v1, "ACTION_HOVER_MOVE"

    goto :goto_0

    .line 3016
    :pswitch_7
    const-string v1, "ACTION_SCROLL"

    goto :goto_0

    .line 3018
    :pswitch_8
    const-string v1, "ACTION_HOVER_ENTER"

    goto :goto_0

    .line 3020
    :pswitch_9
    const-string v1, "ACTION_HOVER_EXIT"

    goto :goto_0

    .line 3025
    .restart local v0       #index:I
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_DOWN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3027
    :pswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POINTER_UP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3002
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 3023
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static axisFromString(Ljava/lang/String;)I
    .locals 5
    .parameter "symbolicName"

    .prologue
    .line 3054
    if-nez p0, :cond_0

    .line 3055
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "symbolicName must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3058
    :cond_0
    sget-object v3, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 3059
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3060
    sget-object v3, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3068
    .end local v2           #i:I
    :goto_1
    return v2

    .line 3059
    .restart local v2       #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3066
    :cond_2
    const/16 v3, 0xa

    :try_start_0
    invoke-static {p0, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_1

    .line 3067
    :catch_0
    move-exception v1

    .line 3068
    .local v1, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public static axisToString(I)Ljava/lang/String;
    .locals 2
    .parameter "axis"

    .prologue
    .line 3041
    sget-object v1, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3042
    .local v0, symbolicName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #symbolicName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #symbolicName:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static buttonStateToString(I)Ljava/lang/String;
    .locals 5
    .parameter "buttonState"

    .prologue
    .line 3083
    if-nez p0, :cond_1

    .line 3084
    const-string v2, "0"

    .line 3105
    :cond_0
    :goto_0
    return-object v2

    .line 3086
    :cond_1
    const/4 v3, 0x0

    .line 3087
    .local v3, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 3088
    .local v0, i:I
    :goto_1
    if-eqz p0, :cond_5

    .line 3089
    and-int/lit8 v4, p0, 0x1

    if-eqz v4, :cond_3

    const/4 v1, 0x1

    .line 3090
    .local v1, isSet:Z
    :goto_2
    ushr-int/lit8 p0, p0, 0x1

    .line 3091
    if-eqz v1, :cond_2

    .line 3092
    sget-object v4, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v2, v4, v0

    .line 3093
    .local v2, name:Ljava/lang/String;
    if-nez v3, :cond_4

    .line 3094
    if-eqz p0, :cond_0

    .line 3097
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #result:Ljava/lang/StringBuilder;
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3103
    .end local v2           #name:Ljava/lang/String;
    .restart local v3       #result:Ljava/lang/StringBuilder;
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 3104
    goto :goto_1

    .line 3089
    .end local v1           #isSet:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 3099
    .restart local v1       #isSet:Z
    .restart local v2       #name:Ljava/lang/String;
    :cond_4
    const/16 v4, 0x7c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3100
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3105
    .end local v1           #isSet:Z
    .end local v2           #name:Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static final clamp(FFF)F
    .locals 1
    .parameter "value"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 2827
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 2832
    .end local p1
    :goto_0
    return p1

    .line 2829
    .restart local p1
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    .line 2830
    goto :goto_0

    :cond_1
    move p1, p0

    .line 2832
    goto :goto_0
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 2
    .parameter "in"

    .prologue
    .line 3135
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 3136
    .local v0, ev:Landroid/view/MotionEvent;
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v1, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(ILandroid/os/Parcel;)I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 3137
    return-object v0
.end method

.method private static final ensureSharedTempPointerCapacity(I)V
    .locals 2
    .parameter "desiredCapacity"

    .prologue
    .line 1380
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v1

    if-ge v1, p0, :cond_3

    .line 1382
    :cond_0
    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v1, :cond_1

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v0, v1

    .line 1383
    .local v0, capacity:I
    :goto_0
    if-ge v0, p0, :cond_2

    .line 1384
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1382
    .end local v0           #capacity:I
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    .line 1386
    .restart local v0       #capacity:I
    :cond_2
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1387
    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v1

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1388
    new-array v1, v0, [I

    sput-object v1, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 1390
    .end local v0           #capacity:I
    :cond_3
    return-void
.end method

.method public static isPenEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1725
    const/4 v0, 0x0

    .line 1726
    .local v0, pointerIndex:I
    const/4 v1, 0x2

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1727
    const/4 v1, 0x1

    .line 1728
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static native nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native nativeCopy(IIZ)I
.end method

.method private static native nativeDispose(I)V
.end method

.method private static native nativeFindPointerIndex(II)I
.end method

.method private static native nativeGetAction(I)I
.end method

.method private static native nativeGetAxisValue(IIII)F
.end method

.method private static native nativeGetButtonState(I)I
.end method

.method private static native nativeGetDeviceId(I)I
.end method

.method private static native nativeGetDownTimeNanos(I)J
.end method

.method private static native nativeGetEdgeFlags(I)I
.end method

.method private static native nativeGetEventTimeNanos(II)J
.end method

.method private static native nativeGetFlags(I)I
.end method

.method private static native nativeGetHistorySize(I)I
.end method

.method private static native nativeGetMetaState(I)I
.end method

.method private static native nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native nativeGetPointerCount(I)I
.end method

.method private static native nativeGetPointerId(II)I
.end method

.method private static native nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native nativeGetRawAxisValue(IIII)F
.end method

.method private static native nativeGetSource(I)I
.end method

.method private static native nativeGetToolType(II)I
.end method

.method private static native nativeGetXOffset(I)F
.end method

.method private static native nativeGetXPrecision(I)F
.end method

.method private static native nativeGetYOffset(I)F
.end method

.method private static native nativeGetYPrecision(I)F
.end method

.method private static native nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I
.end method

.method private static native nativeIsTouchEvent(I)Z
.end method

.method private static native nativeOffsetLocation(IFF)V
.end method

.method private static native nativeReadFromParcel(ILandroid/os/Parcel;)I
.end method

.method private static native nativeScale(IF)V
.end method

.method private static native nativeSetAction(II)V
.end method

.method private static native nativeSetDownTimeNanos(IJ)V
.end method

.method private static native nativeSetEdgeFlags(II)V
.end method

.method private static native nativeSetFlags(II)V
.end method

.method private static native nativeSetSource(II)I
.end method

.method private static native nativeTransform(ILandroid/graphics/Matrix;)V
.end method

.method private static native nativeWriteToParcel(ILandroid/os/Parcel;)V
.end method

.method private static obtain()Landroid/view/MotionEvent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1470
    sget-object v2, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1471
    :try_start_0
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1472
    .local v0, ev:Landroid/view/MotionEvent;
    if-nez v0, :cond_0

    .line 1473
    new-instance v0, Landroid/view/MotionEvent;

    .end local v0           #ev:Landroid/view/MotionEvent;
    invoke-direct {v0}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v2

    .line 1481
    .restart local v0       #ev:Landroid/view/MotionEvent;
    :goto_0
    return-object v0

    .line 1475
    :cond_0
    iget-object v1, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1476
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1477
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1478
    iput-object v3, v0, Landroid/view/MotionEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    .line 1479
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/MotionEvent;->mRecycled:Z

    .line 1480
    iput-object v3, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    goto :goto_0

    .line 1477
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 22
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"

    .prologue
    .line 1605
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v20

    .line 1606
    .local v20, ev:Landroid/view/MotionEvent;
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v21

    .line 1607
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1608
    sget-object v18, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1609
    .local v18, pp:[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    aget-object v1, v18, v1

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1610
    const/4 v1, 0x0

    aget-object v1, v18, v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1612
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1613
    .local v19, pc:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    aget-object v1, v19, v1

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 1614
    const/4 v1, 0x0

    aget-object v1, v19, v1

    move/from16 v0, p5

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1615
    const/4 v1, 0x0

    aget-object v1, v19, v1

    move/from16 v0, p6

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1616
    const/4 v1, 0x0

    aget-object v1, v19, v1

    move/from16 v0, p7

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1617
    const/4 v1, 0x0

    aget-object v1, v19, v1

    move/from16 v0, p8

    iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1619
    move-object/from16 v0, v20

    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/32 v6, 0xf4240

    mul-long v13, p0, v6

    const-wide/32 v6, 0xf4240

    mul-long v15, p2, v6

    const/16 v17, 0x1

    move/from16 v2, p12

    move/from16 v4, p4

    move/from16 v6, p13

    move/from16 v7, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-static/range {v1 .. v19}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v1

    move-object/from16 v0, v20

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1624
    monitor-exit v21

    return-object v20

    .line 1625
    .end local v18           #pp:[Landroid/view/MotionEvent$PointerProperties;
    .end local v19           #pc:[Landroid/view/MotionEvent$PointerCoords;
    :catchall_0
    move-exception v1

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 14
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 1686
    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 14
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1665
    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .locals 20
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerIds"
    .parameter "pointerCoords"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"
    .parameter "source"
    .parameter "flags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1560
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v19

    .line 1561
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 1562
    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 1563
    .local v8, pp:[Landroid/view/MotionEvent$PointerProperties;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    .line 1564
    aget-object v2, v8, v18

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 1565
    aget-object v2, v8, v18

    aget v3, p6, v18

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1563
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1567
    :cond_0
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    monitor-exit v19

    return-object v2

    .line 1570
    .end local v8           #pp:[Landroid/view/MotionEvent$PointerProperties;
    .end local v18           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .locals 21
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "pointerCount"
    .parameter "pointerProperties"
    .parameter "pointerCoords"
    .parameter "metaState"
    .parameter "buttonState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"
    .parameter "source"
    .parameter "flags"

    .prologue
    .line 1517
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v20

    .line 1518
    .local v20, ev:Landroid/view/MotionEvent;
    move-object/from16 v0, v20

    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/32 v2, 0xf4240

    mul-long v13, p0, v2

    const-wide/32 v2, 0xf4240

    mul-long v15, p2, v2

    move/from16 v2, p12

    move/from16 v3, p14

    move/from16 v4, p4

    move/from16 v5, p15

    move/from16 v6, p13

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v17, p5

    move-object/from16 v18, p6

    move-object/from16 v19, p7

    invoke-static/range {v1 .. v19}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v1

    move-object/from16 v0, v20

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1523
    return-object v20
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4
    .parameter "other"

    .prologue
    .line 1694
    if-nez p0, :cond_0

    .line 1695
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1698
    :cond_0
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1699
    .local v0, ev:Landroid/view/MotionEvent;
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    iget v2, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeCopy(IIZ)I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1700
    return-object v0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 4
    .parameter "other"

    .prologue
    .line 1708
    if-nez p0, :cond_0

    .line 1709
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "other motion event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1712
    :cond_0
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    .line 1713
    .local v0, ev:Landroid/view/MotionEvent;
    iget v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    iget v2, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/MotionEvent;->nativeCopy(IIZ)I

    move-result v1

    iput v1, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 1714
    return-object v0
.end method

.method public static toolTypeToString(I)Ljava/lang/String;
    .locals 2
    .parameter "toolType"

    .prologue
    .line 3117
    sget-object v1, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3118
    .local v0, symbolicName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #symbolicName:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #symbolicName:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .locals 5
    .parameter "eventTime"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"

    .prologue
    .line 2781
    sget-object v2, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2782
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 2783
    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 2784
    .local v0, pc:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 2785
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p3, v1, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 2786
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p4, v1, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 2787
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p5, v1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 2788
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput p6, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 2790
    iget v1, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, p1

    invoke-static {v1, v3, v4, v0, p7}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 2791
    monitor-exit v2

    .line 2792
    return-void

    .line 2791
    .end local v0           #pc:[Landroid/view/MotionEvent$PointerCoords;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 3
    .parameter "eventTime"
    .parameter "pointerCoords"
    .parameter "metaState"

    .prologue
    .line 2806
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, p1

    invoke-static {v0, v1, v2, p3, p4}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    .line 2807
    return-void
.end method

.method public final clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .locals 24
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2840
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v21

    .line 2841
    .local v21, ev:Landroid/view/MotionEvent;
    sget-object v23, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v23

    .line 2842
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v2}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v18

    .line 2844
    .local v18, pointerCount:I
    invoke-static/range {v18 .. v18}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 2845
    sget-object v19, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 2846
    .local v19, pp:[Landroid/view/MotionEvent$PointerProperties;
    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 2848
    .local v20, pc:[Landroid/view/MotionEvent$PointerCoords;
    const/16 v22, 0x0

    .local v22, i:I
    :goto_0
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 2849
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v3, v19, v22

    move/from16 v0, v22

    invoke-static {v2, v0, v3}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 2850
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v3, -0x8000

    aget-object v4, v20, v22

    move/from16 v0, v22

    invoke-static {v2, v0, v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2851
    aget-object v2, v20, v22

    aget-object v3, v20, v22

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v0, p1

    move/from16 v1, p3

    invoke-static {v3, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 2852
    aget-object v2, v20, v22

    aget-object v3, v20, v22

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {v3, v0, v1}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 2848
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 2854
    :cond_0
    move-object/from16 v0, v21

    iget v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v4}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v5}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v8}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v9}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v10}, Landroid/view/MotionEvent;->nativeGetXOffset(I)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetYOffset(I)F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v13}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v14}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move/from16 v16, v0

    const/high16 v17, -0x8000

    invoke-static/range {v16 .. v17}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v16

    invoke-static/range {v2 .. v20}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v2

    move-object/from16 v0, v21

    iput v2, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 2864
    monitor-exit v23

    return-object v21

    .line 2865
    .end local v18           #pointerCount:I
    .end local v19           #pp:[Landroid/view/MotionEvent$PointerProperties;
    .end local v20           #pc:[Landroid/view/MotionEvent$PointerCoords;
    .end local v22           #i:I
    :catchall_0
    move-exception v2

    monitor-exit v23
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public bridge synthetic copy()Landroid/view/InputEvent;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public copy()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 1720
    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1459
    :try_start_0
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    if-eqz v0, :cond_0

    .line 1460
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeDispose(I)V

    .line 1461
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent;->mNativePtr:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1466
    return-void

    .line 1464
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final findPointerIndex(I)I
    .locals 1
    .parameter "pointerId"

    .prologue
    .line 2046
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(II)I

    move-result v0

    return v0
.end method

.method public final getAction()I
    .locals 1

    .prologue
    .line 1795
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    return v0
.end method

.method public final getActionIndex()I
    .locals 2

    .prologue
    .line 1818
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .locals 1

    .prologue
    .line 1804
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getAxisValue(I)F
    .locals 3
    .parameter "axis"

    .prologue
    .line 1994
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    invoke-static {v0, p1, v1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getAxisValue(II)F
    .locals 2
    .parameter "axis"
    .parameter "pointerIndex"

    .prologue
    .line 2206
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, p1, p2, v1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getButtonState()I
    .locals 1

    .prologue
    .line 2264
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v0

    return v0
.end method

.method public final getDeviceId()I
    .locals 1

    .prologue
    .line 1772
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v0

    return v0
.end method

.method public final getDownTime()J
    .locals 4

    .prologue
    .line 1864
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .locals 1

    .prologue
    .line 2710
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v0

    return v0
.end method

.method public final getEventTime()J
    .locals 4

    .prologue
    .line 1881
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 2

    .prologue
    .line 1891
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getFlags()I
    .locals 1

    .prologue
    .line 1842
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(II)F
    .locals 2
    .parameter "axis"
    .parameter "pos"

    .prologue
    .line 2492
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalAxisValue(III)F
    .locals 1
    .parameter "axis"
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2673
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalEventTime(I)J
    .locals 4
    .parameter "pos"

    .prologue
    .line 2340
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2475
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalOrientation(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2654
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .locals 1
    .parameter "pointerIndex"
    .parameter "pos"
    .parameter "outPointerCoords"

    .prologue
    .line 2694
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2695
    return-void
.end method

.method public final getHistoricalPressure(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2385
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalPressure(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2546
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2400
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalSize(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2564
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2445
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMajor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2618
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2460
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalToolMinor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2636
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2415
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMajor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2582
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2430
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalTouchMinor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2600
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(I)F
    .locals 2
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 2355
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, v1, v1, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalX(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2510
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(I)F
    .locals 3
    .parameter "pos"

    .prologue
    .line 2370
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistoricalY(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 2528
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getHistorySize()I
    .locals 1

    .prologue
    .line 2326
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetHistorySize(I)I

    move-result v0

    return v0
.end method

.method public final getMetaState()I
    .locals 1

    .prologue
    .line 2249
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v0

    return v0
.end method

.method public final getOrientation()F
    .locals 4

    .prologue
    .line 1981
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getOrientation(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2190
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/16 v1, 0x8

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2
    .parameter "pointerIndex"
    .parameter "outPointerCoords"

    .prologue
    .line 2220
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, p1, v1, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2221
    return-void
.end method

.method public final getPointerCount()I
    .locals 1

    .prologue
    .line 2002
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v0

    return v0
.end method

.method public final getPointerId(I)I
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 2014
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(II)I

    move-result v0

    return v0
.end method

.method public final getPointerIdBits()I
    .locals 5

    .prologue
    .line 2873
    const/4 v1, 0x0

    .line 2874
    .local v1, idBits:I
    iget v3, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v2

    .line 2875
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2876
    const/4 v3, 0x1

    iget v4, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v4, v0}, Landroid/view/MotionEvent;->nativeGetPointerId(II)I

    move-result v4

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    .line 2875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2878
    :cond_0
    return v1
.end method

.method public final getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .locals 1
    .parameter "pointerIndex"
    .parameter "outPointerProperties"

    .prologue
    .line 2235
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 2236
    return-void
.end method

.method public final getPressure()F
    .locals 4

    .prologue
    .line 1921
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getPressure(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2093
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x2

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getRawX()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2277
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getRawY()F
    .locals 4

    .prologue
    .line 2290
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getSize()F
    .locals 4

    .prologue
    .line 1931
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getSize(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2111
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x3

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getSource()I
    .locals 1

    .prologue
    .line 1778
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v0

    return v0
.end method

.method public final getToolMajor()F
    .locals 4

    .prologue
    .line 1961
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMajor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2155
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x6

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor()F
    .locals 4

    .prologue
    .line 1971
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolMinor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2171
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x7

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getToolType(I)I
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 2034
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeGetToolType(II)I

    move-result v0

    return v0
.end method

.method public final getTouchMajor()F
    .locals 4

    .prologue
    .line 1941
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMajor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2125
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x4

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor()F
    .locals 4

    .prologue
    .line 1951
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getTouchMinor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2139
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x5

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getX()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1901
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/high16 v1, -0x8000

    invoke-static {v0, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getX(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2061
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x0

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getXPrecision()F
    .locals 1

    .prologue
    .line 2302
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v0

    return v0
.end method

.method public final getY()F
    .locals 4

    .prologue
    .line 1911
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, -0x8000

    invoke-static {v0, v1, v2, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getY(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 2076
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v1, 0x1

    const/high16 v2, -0x8000

    invoke-static {v0, v1, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v0

    return v0
.end method

.method public final getYPrecision()F
    .locals 1

    .prologue
    .line 2314
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v0

    return v0
.end method

.method public final isTainted()Z
    .locals 2

    .prologue
    .line 1848
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1849
    .local v0, flags:I
    const/high16 v1, -0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isTouchEvent()Z
    .locals 1

    .prologue
    .line 1833
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0}, Landroid/view/MotionEvent;->nativeIsTouchEvent(I)Z

    move-result v0

    return v0
.end method

.method public final isWithinBoundsNoHistory(FFFF)Z
    .locals 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v7, -0x8000

    .line 2815
    iget v6, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v1

    .line 2816
    .local v1, pointerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 2817
    iget v6, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6, v4, v0, v7}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v2

    .line 2818
    .local v2, x:F
    iget v6, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v6, v5, v0, v7}, Landroid/view/MotionEvent;->nativeGetAxisValue(IIII)F

    move-result v3

    .line 2819
    .local v3, y:F
    cmpg-float v6, v2, p1

    if-ltz v6, :cond_0

    cmpl-float v6, v2, p3

    if-gtz v6, :cond_0

    cmpg-float v6, v3, p2

    if-ltz v6, :cond_0

    cmpl-float v6, v3, p4

    if-lez v6, :cond_1

    .line 2823
    .end local v2           #x:F
    .end local v3           #y:F
    :cond_0
    :goto_1
    return v4

    .line 2816
    .restart local v2       #x:F
    .restart local v3       #y:F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #x:F
    .end local v3           #y:F
    :cond_2
    move v4, v5

    .line 2823
    goto :goto_1
.end method

.method public final offsetLocation(FF)V
    .locals 1
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 2736
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(IFF)V

    .line 2737
    return-void
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 1745
    iget-boolean v0, p0, Landroid/view/MotionEvent;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 1746
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1748
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MotionEvent;->mRecycled:Z

    .line 1751
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1752
    :try_start_0
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 1753
    sget v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 1754
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v0, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 1755
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1757
    :cond_1
    monitor-exit v1

    .line 1758
    return-void

    .line 1757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final scale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 1766
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeScale(IF)V

    .line 1767
    return-void
.end method

.method public final setAction(I)V
    .locals 1
    .parameter "action"

    .prologue
    .line 2727
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetAction(II)V

    .line 2728
    return-void
.end method

.method public final setDownTime(J)V
    .locals 3
    .parameter "downTime"

    .prologue
    .line 1874
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, p1

    invoke-static {v0, v1, v2}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(IJ)V

    .line 1875
    return-void
.end method

.method public final setEdgeFlags(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 2720
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(II)V

    .line 2721
    return-void
.end method

.method public final setLocation(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2747
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2748
    .local v0, oldX:F
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 2749
    .local v1, oldY:F
    iget v2, p0, Landroid/view/MotionEvent;->mNativePtr:I

    sub-float v3, p1, v0

    sub-float v4, p2, v1

    invoke-static {v2, v3, v4}, Landroid/view/MotionEvent;->nativeOffsetLocation(IFF)V

    .line 2750
    return-void
.end method

.method public final setSource(I)V
    .locals 1
    .parameter "source"

    .prologue
    .line 1784
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeSetSource(II)I

    .line 1785
    return-void
.end method

.method public final setTainted(Z)V
    .locals 3
    .parameter "tainted"

    .prologue
    .line 1855
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    .line 1856
    .local v0, flags:I
    iget v2, p0, Landroid/view/MotionEvent;->mNativePtr:I

    if-eqz p1, :cond_0

    const/high16 v1, -0x8000

    or-int/2addr v1, v0

    :goto_0
    invoke-static {v2, v1}, Landroid/view/MotionEvent;->nativeSetFlags(II)V

    .line 1857
    return-void

    .line 1856
    :cond_0
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    goto :goto_0
.end method

.method public final split(I)Landroid/view/MotionEvent;
    .locals 36
    .parameter "idBits"

    .prologue
    .line 2886
    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v22

    .line 2887
    .local v22, ev:Landroid/view/MotionEvent;
    sget-object v35, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v35

    .line 2888
    :try_start_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(I)I

    move-result v34

    .line 2889
    .local v34, oldPointerCount:I
    invoke-static/range {v34 .. v34}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    .line 2890
    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 2891
    .local v20, pp:[Landroid/view/MotionEvent$PointerProperties;
    sget-object v21, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 2892
    .local v21, pc:[Landroid/view/MotionEvent$PointerCoords;
    sget-object v28, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    .line 2894
    .local v28, map:[I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetAction(I)I

    move-result v31

    .line 2895
    .local v31, oldAction:I
    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v32, v0

    .line 2896
    .local v32, oldActionMasked:I
    const v3, 0xff00

    and-int v3, v3, v31

    shr-int/lit8 v33, v3, 0x8

    .line 2898
    .local v33, oldActionPointerIndex:I
    const/16 v29, -0x1

    .line 2899
    .local v29, newActionPointerIndex:I
    const/16 v19, 0x0

    .line 2900
    .local v19, newPointerCount:I
    const/16 v30, 0x0

    .line 2901
    .local v30, newIdBits:I
    const/16 v26, 0x0

    .local v26, i:I
    :goto_0
    move/from16 v0, v26

    move/from16 v1, v34

    if-ge v0, v1, :cond_2

    .line 2902
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    aget-object v4, v20, v19

    move/from16 v0, v26

    invoke-static {v3, v0, v4}, Landroid/view/MotionEvent;->nativeGetPointerProperties(IILandroid/view/MotionEvent$PointerProperties;)V

    .line 2903
    const/4 v3, 0x1

    aget-object v4, v20, v19

    iget v4, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    shl-int v27, v3, v4

    .line 2904
    .local v27, idBit:I
    and-int v3, v27, p1

    if-eqz v3, :cond_1

    .line 2905
    move/from16 v0, v26

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 2906
    move/from16 v29, v19

    .line 2908
    :cond_0
    aput v26, v28, v19

    .line 2909
    add-int/lit8 v19, v19, 0x1

    .line 2910
    or-int v30, v30, v27

    .line 2901
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 2914
    .end local v27           #idBit:I
    :cond_2
    if-nez v19, :cond_3

    .line 2915
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "idBits did not match any ids in the event"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2961
    .end local v19           #newPointerCount:I
    .end local v20           #pp:[Landroid/view/MotionEvent$PointerProperties;
    .end local v21           #pc:[Landroid/view/MotionEvent$PointerCoords;
    .end local v26           #i:I
    .end local v28           #map:[I
    .end local v29           #newActionPointerIndex:I
    .end local v30           #newIdBits:I
    .end local v31           #oldAction:I
    .end local v32           #oldActionMasked:I
    .end local v33           #oldActionPointerIndex:I
    .end local v34           #oldPointerCount:I
    :catchall_0
    move-exception v3

    monitor-exit v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2919
    .restart local v19       #newPointerCount:I
    .restart local v20       #pp:[Landroid/view/MotionEvent$PointerProperties;
    .restart local v21       #pc:[Landroid/view/MotionEvent$PointerCoords;
    .restart local v26       #i:I
    .restart local v28       #map:[I
    .restart local v29       #newActionPointerIndex:I
    .restart local v30       #newIdBits:I
    .restart local v31       #oldAction:I
    .restart local v32       #oldActionMasked:I
    .restart local v33       #oldActionPointerIndex:I
    .restart local v34       #oldPointerCount:I
    :cond_3
    const/4 v3, 0x5

    move/from16 v0, v32

    if-eq v0, v3, :cond_4

    const/4 v3, 0x6

    move/from16 v0, v32

    if-ne v0, v3, :cond_8

    .line 2920
    :cond_4
    if-gez v29, :cond_5

    .line 2922
    const/4 v6, 0x2

    .line 2937
    .local v6, newAction:I
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v3}, Landroid/view/MotionEvent;->nativeGetHistorySize(I)I

    move-result v25

    .line 2938
    .local v25, historySize:I
    const/16 v23, 0x0

    .local v23, h:I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v25

    if-gt v0, v1, :cond_c

    .line 2939
    move/from16 v0, v23

    move/from16 v1, v25

    if-ne v0, v1, :cond_9

    const/high16 v24, -0x8000

    .line 2941
    .local v24, historyPos:I
    :goto_3
    const/16 v26, 0x0

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 2942
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    aget v4, v28, v26

    aget-object v5, v21, v26

    move/from16 v0, v24

    invoke-static {v3, v4, v0, v5}, Landroid/view/MotionEvent;->nativeGetPointerCoords(IIILandroid/view/MotionEvent$PointerCoords;)V

    .line 2941
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 2923
    .end local v6           #newAction:I
    .end local v23           #h:I
    .end local v24           #historyPos:I
    .end local v25           #historySize:I
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_7

    .line 2925
    const/4 v3, 0x5

    move/from16 v0, v32

    if-ne v0, v3, :cond_6

    const/4 v6, 0x0

    .restart local v6       #newAction:I
    :goto_5
    goto :goto_1

    .end local v6           #newAction:I
    :cond_6
    const/4 v6, 0x1

    goto :goto_5

    .line 2929
    :cond_7
    shl-int/lit8 v3, v29, 0x8

    or-int v6, v32, v3

    .restart local v6       #newAction:I
    goto :goto_1

    .line 2934
    .end local v6           #newAction:I
    :cond_8
    move/from16 v6, v31

    .restart local v6       #newAction:I
    goto :goto_1

    .restart local v23       #h:I
    .restart local v25       #historySize:I
    :cond_9
    move/from16 v24, v23

    .line 2939
    goto :goto_3

    .line 2945
    .restart local v24       #historyPos:I
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move/from16 v0, v24

    invoke-static {v3, v0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(II)J

    move-result-wide v17

    .line 2946
    .local v17, eventTimeNanos:J
    if-nez v23, :cond_b

    .line 2947
    move-object/from16 v0, v22

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v5}, Landroid/view/MotionEvent;->nativeGetSource(I)I

    move-result v5

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v7}, Landroid/view/MotionEvent;->nativeGetFlags(I)I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v8}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(I)I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v9}, Landroid/view/MotionEvent;->nativeGetMetaState(I)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v10}, Landroid/view/MotionEvent;->nativeGetButtonState(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v11}, Landroid/view/MotionEvent;->nativeGetXOffset(I)F

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v12}, Landroid/view/MotionEvent;->nativeGetYOffset(I)F

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v13}, Landroid/view/MotionEvent;->nativeGetXPrecision(I)F

    move-result v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v14}, Landroid/view/MotionEvent;->nativeGetYPrecision(I)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v15}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(I)J

    move-result-wide v15

    invoke-static/range {v3 .. v21}, Landroid/view/MotionEvent;->nativeInitialize(IIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)I

    move-result v3

    move-object/from16 v0, v22

    iput v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    .line 2938
    :goto_6
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_2

    .line 2957
    :cond_b
    move-object/from16 v0, v22

    iget v3, v0, Landroid/view/MotionEvent;->mNativePtr:I

    const/4 v4, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, v21

    invoke-static {v3, v0, v1, v2, v4}, Landroid/view/MotionEvent;->nativeAddBatch(IJ[Landroid/view/MotionEvent$PointerCoords;I)V

    goto :goto_6

    .line 2960
    .end local v17           #eventTimeNanos:J
    .end local v24           #historyPos:I
    :cond_c
    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v22
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2967
    .local v1, msg:Ljava/lang/StringBuilder;
    const-string v3, "MotionEvent { action="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2969
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 2970
    .local v2, pointerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2971
    const-string v3, ", id["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2972
    const-string v3, ", x["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2973
    const-string v3, ", y["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2974
    const-string v3, ", toolType["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2970
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2978
    :cond_0
    const-string v3, ", buttonState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2979
    const-string v3, ", metaState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2980
    const-string v3, ", flags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    const-string v3, ", edgeFlags=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2982
    const-string v3, ", pointerCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2983
    const-string v3, ", historySize="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2984
    const-string v3, ", eventTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2985
    const-string v3, ", downTime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2986
    const-string v3, ", deviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2987
    const-string v3, ", source=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2988
    const-string v3, " }"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2989
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public final transform(Landroid/graphics/Matrix;)V
    .locals 2
    .parameter "matrix"

    .prologue
    .line 2758
    if-nez p1, :cond_0

    .line 2759
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "matrix must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2762
    :cond_0
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeTransform(ILandroid/graphics/Matrix;)V

    .line 2763
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 3141
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3142
    iget v0, p0, Landroid/view/MotionEvent;->mNativePtr:I

    invoke-static {v0, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(ILandroid/os/Parcel;)V

    .line 3143
    return-void
.end method
