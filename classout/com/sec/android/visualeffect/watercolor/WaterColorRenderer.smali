.class public Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;
.super Ljava/lang/Object;
.source "WaterColorRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;
    }
.end annotation


# static fields
.field public static final PORTRAIT_MODE:I = 0x0

.field public static final QUALITY_LEVEL_0:I = 0x0

.field public static final QUALITY_LEVEL_1:I = 0x1

.field public static final QUALITY_LEVEL_2:I = 0x2

.field public static final QUALITY_LEVEL_3:I = 0x3

.field public static final TABLET_MODE:I = 0x1

.field private static mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;


# instance fields
.field private final ACQUIRE_DVFS:I

.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private final DBG:Z

.field private DISTANCE_MAX_OF_DRAG:I

.field private final EVENT_CLEAR:I

.field private final EVENT_DELETE_BACKGROUND:I

.field private final EVENT_DELETE_FBO:I

.field private final EVENT_RELOAD_BACKGROUND:I

.field private final EVENT_RELOAD_FBO:I

.field private final EVENT_UNLOCK:I

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field private final RELEASE_DVFS:I

.field private final TAG:Ljava/lang/String;

.field private TIME_FOR_CPU_GPU_MAX_LOCK:I

.field cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private defaultX:F

.field private defaultY:F

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private isCleanup:Z

.field private isDraged:Z

.field isFirstSurfaceChanged:Z

.field private isOrientationChangCount:I

.field private isOrientationChanged:Z

.field private isPrevSurfaceWidth:I

.field private isRestrictCPUClock:Z

.field private isRestrictGPUFreq:Z

.field private isScreenTurnedOn:Z

.field private isSurfaceChanged:Z

.field isSurfaceCreated:Z

.field logCount:I

.field private mBG:Landroid/graphics/Bitmap;

.field mBgChangeCheckArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mClearEffectArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mCountOfDirtyMode:I

.field private mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field private mMask1:Landroid/graphics/Bitmap;

.field private mMask2:Landroid/graphics/Bitmap;

.field private mMask3:Landroid/graphics/Bitmap;

.field private mNoise:Landroid/graphics/Bitmap;

.field mParent:Landroid/opengl/GLSurfaceView;

.field private mQualityLevel:I

.field private mTabletMode:I

.field private mTube:Landroid/graphics/Bitmap;

.field mUnLockEffectArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final pointer_xpos:[I

.field final pointer_ypos:[I

.field private prevPressTime:J

.field private prevTouchMoveX:I

.field private prevTouchMoveY:I

.field supportedCPUClockTable:[I

.field supportedGPUFreqTable:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;ILcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;I)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/opengl/GLSurfaceView;
    .param p3, "tabletmode"    # I
    .param p4, "mJni"    # Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;
    .param p5, "qualityLevel"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->DBG:Z

    .line 38
    const-string v0, "WaterColor_WaterColorRenderer"

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->TAG:Ljava/lang/String;

    .line 56
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isScreenTurnedOn:Z

    .line 57
    iput v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->defaultX:F

    .line 58
    iput v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->defaultY:F

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    .line 62
    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevPressTime:J

    .line 64
    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveX:I

    .line 65
    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveY:I

    .line 66
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isDraged:Z

    .line 67
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->DISTANCE_MAX_OF_DRAG:I

    .line 70
    const/16 v0, 0x5a

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_CLEAR:I

    .line 71
    const/16 v0, 0x5b

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_UNLOCK:I

    .line 72
    const/16 v0, 0x5c

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_DELETE_BACKGROUND:I

    .line 73
    const/16 v0, 0x5e

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_RELOAD_BACKGROUND:I

    .line 74
    const/16 v0, 0x5d

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_DELETE_FBO:I

    .line 75
    const/16 v0, 0x5f

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->EVENT_RELOAD_FBO:I

    .line 78
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isFirstSurfaceChanged:Z

    .line 79
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceCreated:Z

    .line 80
    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mCountOfDirtyMode:I

    .line 81
    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    .line 82
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    .line 90
    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    .line 93
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    .line 94
    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    .line 95
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceChanged:Z

    .line 96
    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPrevSurfaceWidth:I

    .line 101
    iput v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->CPU_CLOCK_NUM:I

    .line 102
    iput-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 103
    iput-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    .line 104
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    .line 107
    iput v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    .line 108
    iput-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 109
    iput-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    .line 110
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    .line 112
    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->CPU_CLOK_CONTROL:I

    .line 113
    iput v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->GPU_FREQ_CONTROL:I

    .line 115
    const v0, 0x88b8

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    .line 117
    iput v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->ACQUIRE_DVFS:I

    .line 118
    iput v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->RELEASE_DVFS:I

    .line 120
    iput-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    .line 122
    iput-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    .line 123
    iput-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    .line 124
    iput-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    .line 131
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mQualityLevel:I

    .line 141
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "WaterColorRender Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mContext:Landroid/content/Context;

    .line 143
    iput-object p2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    .line 144
    sput-object p4, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    .line 145
    iput p3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    .line 146
    iput p5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mQualityLevel:I

    .line 147
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->Init_PhysicsEngineJNI()V

    .line 148
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isFirstSurfaceChanged:Z

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    .line 152
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->aquireCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->releaseCpuGpuMaxLock()V

    return-void
.end method

.method private acquireBooster(I)V
    .registers 8
    .param p1, "type"    # I

    .prologue
    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, "bestCpuClock":I
    const/4 v1, 0x0

    .line 693
    .local v1, "bestGpuFreq":I
    if-nez p1, :cond_56

    .line 695
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_55

    .line 697
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    if-nez v2, :cond_55

    .line 699
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    .line 701
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    if-eqz v2, :cond_55

    .line 703
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->getBestMaxFreq([II)I

    move-result v0

    .line 704
    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! CPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 706
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 729
    :cond_55
    :goto_55
    return-void

    .line 713
    :cond_56
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_55

    .line 715
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    if-nez v2, :cond_55

    .line 717
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    .line 719
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    if-eqz v2, :cond_55

    .line 721
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->getBestMaxFreq([II)I

    move-result v1

    .line 722
    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! GPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 724
    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_55
.end method

.method private aquireCpuGpuMaxLock()V
    .registers 2

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_8

    .line 666
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->acquireBooster(I)V

    .line 669
    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_10

    .line 671
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->acquireBooster(I)V

    .line 673
    :cond_10
    return-void
.end method

.method private getBestMaxFreq([II)I
    .registers 9
    .param p1, "pArray"    # [I
    .param p2, "bestValue"    # I

    .prologue
    .line 763
    const/4 v4, 0x0

    .line 764
    .local v4, "value":I
    const v3, 0x7fffffff

    .line 765
    .local v3, "prevdiff":I
    const/4 v1, 0x0

    .line 766
    .local v1, "currdiff":I
    array-length v0, p1

    .line 768
    .local v0, "arrayLenth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 771
    aget v5, p1, v2

    sub-int v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 772
    if-ge v1, v3, :cond_15

    .line 774
    move v4, v2

    .line 775
    move v3, v1

    .line 768
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 779
    :cond_18
    return v4
.end method

.method private releaseCpuGpuMaxLock()V
    .registers 2

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_8

    .line 679
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->releaseBooster(I)V

    .line 682
    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_10

    .line 684
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->releaseBooster(I)V

    .line 686
    :cond_10
    return-void
.end method


# virtual methods
.method public changeBackground(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bg"    # Landroid/graphics/Bitmap;

    .prologue
    .line 523
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "changeBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    if-nez p1, :cond_11

    .line 527
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "bg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_10
    return-void

    .line 531
    :cond_11
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBG:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1d

    .line 533
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBG:Landroid/graphics/Bitmap;

    .line 537
    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2c

    .line 539
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1d

    .line 541
    :cond_2c
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBG:Landroid/graphics/Bitmap;

    goto :goto_10
.end method

.method public changeNoiseTexture()V
    .registers 5

    .prologue
    .line 518
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Noise"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mNoise:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 519
    return-void
.end method

.method public cleanUp()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 611
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    .line 615
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isScreenTurnedOn:Z

    .line 616
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    .line 618
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    if-lez v0, :cond_1f

    .line 620
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$1;-><init>(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 635
    :cond_1f
    return-void
.end method

.method public clearWaterColor()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 563
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    if-lez v0, :cond_1a

    .line 565
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "clearWaterColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 569
    :cond_1a
    return-void
.end method

.method public destroyed()V
    .registers 3

    .prologue
    .line 654
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_12

    .line 658
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    .line 660
    :cond_12
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 309
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "= onConfigurationChanged = Renderer onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    .line 312
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 313
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 227
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_40

    .line 229
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFrame, SetTexture(LockScreenBG), mBgChangeCheckArray.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "LockScreenBG"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 231
    :goto_32
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_40

    .line 233
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_32

    .line 237
    :cond_40
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_64

    .line 239
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "onDrawFrame, mJniWaterColor.onKeyEvent(EVENT_CLEAR)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onKeyEvent(I)V

    .line 241
    :goto_56
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_64

    .line 243
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_56

    .line 247
    :cond_64
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_88

    .line 249
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "onDrawFrame, mJniWaterColor.onKeyEvent(EVENT_UNLOCK)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onKeyEvent(I)V

    .line 251
    :goto_7a
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_88

    .line 253
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7a

    .line 257
    :cond_88
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    if-eqz v0, :cond_b2

    .line 259
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceChanged:Z

    if-eq v0, v4, :cond_96

    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_114

    .line 261
    :cond_96
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= onConfigurationChanged = onDrawFrame isSurfaceChanged == true && isOrientationChanged == true, isOrientationChangCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    .line 270
    :cond_b2
    :goto_b2
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceChanged:Z

    .line 272
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->isEmpty()I

    move-result v0

    if-ne v0, v4, :cond_11b

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    if-nez v0, :cond_11b

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11b

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mClearEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11b

    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_11b

    .line 278
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mJniWaterColor is Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mCountOfDirtyMode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mCountOfDirtyMode:I

    .line 280
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mCountOfDirtyMode:I

    if-lt v0, v5, :cond_108

    .line 282
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "Drity Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 284
    iput v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mCountOfDirtyMode:I

    .line 286
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_ff

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_108

    .line 288
    :cond_ff
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v0, :cond_108

    .line 289
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 302
    :cond_108
    :goto_108
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->Draw_PhysicsEngine()V

    .line 304
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    .line 305
    return-void

    .line 266
    :cond_114
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChangCount:I

    goto :goto_b2

    .line 295
    :cond_11b
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_108

    .line 297
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "mJniWaterColor is not Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iput v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    goto :goto_108
.end method

.method public onKeyEvent(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .prologue
    .line 572
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onKeyEvent(I)V

    .line 573
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iput-boolean v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceChanged:Z

    .line 175
    iput v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    .line 177
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_30

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_39

    .line 179
    :cond_30
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v0, :cond_39

    .line 180
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    :cond_39
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPrevSurfaceWidth:I

    if-ne v0, p2, :cond_45

    .line 185
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "isPrevSurfaceWidth == width"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_44
    :goto_44
    return-void

    .line 189
    :cond_45
    iput p2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPrevSurfaceWidth:I

    .line 191
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    if-nez v0, :cond_67

    .line 193
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isFirstSurfaceChanged:Z

    if-eqz v0, :cond_44

    .line 195
    if-le p2, p3, :cond_5d

    .line 197
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    iget v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mQualityLevel:I

    invoke-virtual {v0, v1, v2, p3, p2}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->Init_PhysicsEngine(IIII)V

    .line 203
    :goto_5a
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isFirstSurfaceChanged:Z

    goto :goto_44

    .line 201
    :cond_5d
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    iget v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mQualityLevel:I

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->Init_PhysicsEngine(IIII)V

    goto :goto_5a

    .line 208
    :cond_67
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceCreated:Z

    if-eqz v0, :cond_7a

    .line 210
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->preSetTexture()V

    .line 211
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    iget v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mQualityLevel:I

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->Init_PhysicsEngine(IIII)V

    .line 212
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceCreated:Z

    goto :goto_44

    .line 216
    :cond_7a
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->changeNoiseTexture()V

    .line 217
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    invoke-virtual {v0, p2, p3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onSurfaceChangedEvent(II)V

    goto :goto_44
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 158
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTabletMode:I

    if-nez v0, :cond_e

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->preSetTexture()V

    .line 163
    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isSurfaceCreated:Z

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isPrevSurfaceWidth:I

    .line 165
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 346
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 347
    .local v8, "action":I
    const/4 v14, 0x0

    .line 349
    .local v14, "returnValue":Z
    const/4 v3, 0x0

    .line 350
    .local v3, "pointer_id":I
    const/4 v4, 0x1

    .line 351
    .local v4, "multitouch_num":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    aput v5, v2, v3

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    aput v5, v2, v3

    .line 354
    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    if-eqz v2, :cond_44

    .line 358
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "isCleanup is true"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v15, v14

    .line 448
    .end local v14    # "returnValue":Z
    .local v15, "returnValue":I
    :goto_43
    return v15

    .line 362
    .end local v15    # "returnValue":I
    .restart local v14    # "returnValue":Z
    :cond_44
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 364
    packed-switch v8, :pswitch_data_1aa

    :cond_4f
    :goto_4f
    :pswitch_4f
    move v15, v14

    .line 448
    .restart local v15    # "returnValue":I
    goto :goto_43

    .line 366
    .end local v15    # "returnValue":I
    :pswitch_51
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "ACTION_DOWN"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    .line 370
    const/4 v14, 0x1

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevPressTime:J

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveX:I

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveY:I

    .line 374
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isDraged:Z

    .line 375
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    .line 377
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v2, :cond_99

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v2, :cond_4f

    .line 379
    :cond_99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v2, :cond_4f

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4f

    .line 387
    :pswitch_a8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isDraged:Z

    if-nez v2, :cond_102

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveX:I

    sub-int/2addr v2, v5

    int-to-float v12, v2

    .line 390
    .local v12, "dx":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevTouchMoveY:I

    sub-int/2addr v2, v5

    int-to-float v13, v2

    .line 392
    .local v13, "dy":F
    float-to-double v5, v12

    const-wide/high16 v16, 0x4000000000000000L

    move-wide/from16 v0, v16

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    float-to-double v0, v13

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    add-double v5, v5, v16

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v11, v5

    .line 394
    .local v11, "distanceForDragSound":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->DISTANCE_MAX_OF_DRAG:I

    if-le v11, v2, :cond_102

    .line 396
    const-string v2, "WaterColor_WaterColorRenderer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "distanceForDragSound = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isDraged:Z

    .line 401
    .end local v11    # "distanceForDragSound":I
    .end local v12    # "dx":F
    .end local v13    # "dy":F
    :cond_102
    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_4f

    .line 407
    :pswitch_112
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "ACTION_UP"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevPressTime:J

    move-wide/from16 v16, v0

    sub-long v9, v5, v16

    .line 409
    .local v9, "differTime":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isDraged:Z

    if-nez v2, :cond_4f

    const-wide/16 v5, 0x258

    cmp-long v2, v9, v5

    if-lez v2, :cond_4f

    .line 411
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "LONG PRESS UP"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    .line 414
    const/4 v14, 0x1

    goto/16 :goto_4f

    .line 420
    .end local v9    # "differTime":J
    :pswitch_149
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "ACTION_HOVER_ENTER"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v2, :cond_15c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v2, :cond_16a

    .line 424
    :cond_15c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v2, :cond_16a

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 428
    :cond_16a
    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_4f

    .line 434
    :pswitch_17b
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "ACTION_HOVER_MOVE"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_4f

    .line 441
    :pswitch_192
    const-string v2, "WaterColor_WaterColorRenderer"

    const-string v5, "ACTION_HOVER_EXIT"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    sget-object v2, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto/16 :goto_4f

    .line 364
    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_51
        :pswitch_112
        :pswitch_a8
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_4f
        :pswitch_17b
        :pswitch_4f
        :pswitch_149
        :pswitch_192
    .end packed-switch
.end method

.method public onTouchEventForPatternLock(Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 453
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 455
    .local v6, "action":I
    const/4 v1, 0x0

    .line 456
    .local v1, "pointer_id":I
    const/4 v2, 0x1

    .line 457
    .local v2, "multitouch_num":I
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    .line 458
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v1

    .line 460
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTouchEventForPatternLock action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    if-eqz v0, :cond_3d

    .line 464
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "isCleanup is true"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_3c
    :goto_3c
    return-void

    .line 468
    :cond_3d
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 470
    packed-switch v6, :pswitch_data_a8

    goto :goto_3c

    .line 472
    :pswitch_47
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "ACTION_DOWN => ACTION_HOVER_ENTER"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    iget-object v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    .line 475
    iput-boolean v9, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    .line 477
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_63

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_3c

    .line 479
    :cond_63
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v0, :cond_3c

    .line 480
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3c

    .line 487
    :pswitch_6d
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "ACTION_MOVE => ACTION_HOVER_MOVE"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    iget-object v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto :goto_3c

    .line 494
    :pswitch_7f
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "ACTION_UP"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v9, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->prevPressTime:J

    sub-long v7, v3, v9

    .line 496
    .local v7, "differTime":J
    const-wide/16 v3, 0x258

    cmp-long v0, v7, v3

    if-lez v0, :cond_3c

    .line 498
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v3, "LONG PRESS, ACTION_UP => ACTION_HOVER_EXIT"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_xpos:[I

    iget-object v5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->pointer_ypos:[I

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->onTouchEvent(III[I[I)V

    goto :goto_3c

    .line 470
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_47
        :pswitch_7f
        :pswitch_6d
    .end packed-switch
.end method

.method public preSetTexture()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 509
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Mask1"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask1:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 510
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Mask2"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 511
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Mask3"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask3:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 512
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Tube"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTube:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 513
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "Noise"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mNoise:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 514
    sget-object v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mJniWaterColor:Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;

    const-string v1, "LockScreenBG"

    iget-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/visualeffect/watercolor/JniWaterColorRenderer;->SetTexture(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 515
    return-void
.end method

.method public releaseBooster(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 733
    if-nez p1, :cond_1a

    .line 735
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    if-eqz v0, :cond_19

    .line 737
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_17

    .line 739
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "== DVFS == cpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 743
    :cond_17
    iput-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedCPUClockTable:[I

    .line 759
    :cond_19
    :goto_19
    return-void

    .line 748
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_19

    .line 750
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2e

    .line 752
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "== DVFS == gpu MaxFreq Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 756
    :cond_2e
    iput-object v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->supportedGPUFreqTable:[I

    goto :goto_19
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 638
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->clearWaterColor()V

    .line 641
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isScreenTurnedOn:Z

    .line 642
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    .line 644
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_17

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_21

    .line 646
    :cond_17
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v0, :cond_21

    .line 647
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 649
    :cond_21
    return-void
.end method

.method public screenTurnedOn()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 604
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isScreenTurnedOn:Z

    .line 607
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 608
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bg"    # Landroid/graphics/Bitmap;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mBG:Landroid/graphics/Bitmap;

    .line 342
    return-void
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "mask1"    # Landroid/graphics/Bitmap;
    .param p2, "mask2"    # Landroid/graphics/Bitmap;
    .param p3, "mask3"    # Landroid/graphics/Bitmap;
    .param p4, "tube"    # Landroid/graphics/Bitmap;
    .param p5, "noise"    # Landroid/graphics/Bitmap;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask1:Landroid/graphics/Bitmap;

    .line 333
    iput-object p2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask2:Landroid/graphics/Bitmap;

    .line 334
    iput-object p3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mMask3:Landroid/graphics/Bitmap;

    .line 335
    iput-object p4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mTube:Landroid/graphics/Bitmap;

    .line 336
    iput-object p5, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mNoise:Landroid/graphics/Bitmap;

    .line 337
    return-void
.end method

.method public setValueOfDVFS(ZIZI)V
    .registers 8
    .param p1, "cpuClock"    # Z
    .param p2, "cpuClockIndex"    # I
    .param p3, "gpuFreq"    # Z
    .param p4, "gpuFreqIndex"    # I

    .prologue
    .line 318
    iput-boolean p1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    .line 319
    iput p2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->CPU_CLOCK_NUM:I

    .line 320
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictCPUClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == CPU_CLOCK_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->CPU_CLOCK_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iput-boolean p3, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    .line 325
    iput p4, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    .line 326
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictGPUFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v0, "WaterColor_WaterColorRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == GPU_FREQUNCY_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 577
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isCleanup:Z

    .line 580
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isOrientationChanged:Z

    .line 581
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 583
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_58

    .line 585
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-nez v0, :cond_58

    .line 587
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "== DVFS == new DVFSHandlerWaterColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;-><init>(Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    .line 590
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_42

    .line 592
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "== DVFS == new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 595
    :cond_42
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_58

    .line 597
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "== DVFS == new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 601
    :cond_58
    return-void
.end method

.method public unlockEffect()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 547
    iget v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->logCount:I

    if-lez v0, :cond_2c

    .line 549
    const-string v0, "WaterColor_WaterColorRenderer"

    const-string v1, "unlockWaterColor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mUnLockEffectArray:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 553
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_2c

    .line 555
    :cond_22
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    if-eqz v0, :cond_2c

    .line 556
    iget-object v0, p0, Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer;->mDVFSHandlerWaterColor:Lcom/sec/android/visualeffect/watercolor/WaterColorRenderer$DVFSHandlerForWaterColor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 559
    :cond_2c
    return-void
.end method
