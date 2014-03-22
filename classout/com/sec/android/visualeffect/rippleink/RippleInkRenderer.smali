.class public Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;
.super Ljava/lang/Object;
.source "RippleInkRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;
    }
.end annotation


# static fields
.field private static final INK_DISABLE:I = 0x0

.field public static final PORTRAIT_MODE:I = 0x0

.field private static final RIPPLE_LIGHT:I = 0x0

.field private static final RIPPLE_LIGHT_WITH_INK:I = 0x1

.field public static final TABLET_MODE:I = 0x1

.field public static inkColorFromSettingForLCD:[[F

.field public static inkColorFromSettingForLED:[[F


# instance fields
.field private final ACQUIRE_DVFS:I

.field private CPU_CLOCK_NUM:I

.field private final CPU_CLOK_CONTROL:I

.field private final DBG:Z

.field private GPU_FREQUNCY_NUM:I

.field private final GPU_FREQ_CONTROL:I

.field private HOVER_EXPONENT_RATIO_MAX:F

.field private HOVER_EXPONENT_RATIO_MIN:F

.field private HOVER_FRESENL_MAX:F

.field private HOVER_FRESENL_MIN:F

.field private HOVER_INTENSITY_MAX:F

.field private HOVER_SPECULAR_RATIO_MAX:F

.field private HOVER_SPECULAR_RATIO_MIN:F

.field private MESH_SIZE_HEIGHT:I

.field private MESH_SIZE_WIDTH:I

.field private NUM_DETAILS_HEIGHT:I

.field private NUM_DETAILS_WIDTH:I

.field private final REDUCTION_RATE_NORMAL:F

.field private final RELEASE_DVFS:I

.field private final RIPPLE_WAIT_TIME:J

.field private SURFACE_DETAILS_HEIGHT:I

.field private SURFACE_DETAILS_WIDTH:I

.field private final TAG:Ljava/lang/String;

.field private TIME_FOR_CPU_GPU_MAX_LOCK:I

.field private TOUCH_EXPONENT:F

.field private TOUCH_FRESENL:F

.field private TOUCH_SPECULAR:F

.field private VCOUNT:I

.field XRatioAdjustLandscape:F

.field XRatioAdjustPortrait:F

.field XRatioForLandscape:F

.field XRatioForPortrait:F

.field YRatioForLandscape:F

.field YRatioForPortrait:F

.field alphaRatio1:F

.field alphaRatio2:F

.field bitmapBG:Landroid/graphics/Bitmap;

.field bitmapWater:Landroid/graphics/Bitmap;

.field private calledScreenTurnedOn:Z

.field cpuMaxClockBooster:Landroid/os/DVFSHelper;

.field private defaultX:F

.field private defaultY:F

.field private diffPressTime:J

.field private downX:F

.field private downY:F

.field private drawCount:I

.field private effectType:I

.field glX:F

.field glY:F

.field private gpuHeights:[F

.field gpuMaxFreqBooster:Landroid/os/DVFSHelper;

.field private heights:[F

.field private heightsSub1:[F

.field private heightsSub2:[F

.field private hoverPlus_Frenel:F

.field private hoverPlus_Specular:F

.field private hoverPlus_exponent:F

.field private indices:[S

.field private inkColorFromSetting:[[F

.field intensityForLandscape:F

.field intensityForPortrait:F

.field intensityForRipple:F

.field private isFirstTouched:Z

.field private isInkEnable:Z

.field private isMakedASpenToucdUp:Z

.field private isOrientationChangCount:I

.field private isOrientationChanged:Z

.field private isRestrictCPUClock:Z

.field private isRestrictGPUFreq:Z

.field private isScreenTurnedOn:Z

.field private isShowCalled:Z

.field private isSurfaceChanged:Z

.field private isSurfaceCreated:Z

.field private isSystemSoundChecked:Z

.field isTouched:Z

.field private isUseLCD:Z

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

.field private mBitmapRatio:F

.field private mContext:Landroid/content/Context;

.field private mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

.field private mDefaultRunnable:Ljava/lang/Runnable;

.field mEffectChangeCheckArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mExponentRatio:F

.field private mFresnelRatio:F

.field private mHoverEnabled:Z

.field private mHoverIntensity:F

.field private mInkEffectColor:I

.field private mLandscape:Z

.field mParent:Landroid/opengl/GLSurfaceView;

.field private mPhoneMode:I

.field private mPreviousRippleTime:J

.field private mReductionRate:F

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSpecularRatio:F

.field private max:I

.field private mouseX:F

.field private mouseY:F

.field private preEffectType:I

.field private prevPressTime:J

.field private prevSurfaceWidth:I

.field private proj:[F

.field reflectionRatio:F

.field refractiveIndex:F

.field private rippleDistance:I

.field rippleDragThreshold:D

.field spanXForLandscape:I

.field spanXForPortrait:I

.field spanYForLandscape:I

.field spanYForPortrait:I

.field supportedCPUClockTable:[I

.field supportedGPUFreqTable:[I

.field textures0:[I

.field textures1:[I

.field translateXForLandscape:F

.field translateXForPortrait:F

.field translateYForLandscape:F

.field translateYForPortrait:F

.field translateZForLandscape:F

.field translateZForPortrait:F

.field unitCellHeight:F

.field unitCellWidth:F

.field private velocity:[F

.field private velocitySub1:[F

.field private velocitySub2:[F

.field private vertices:[F

.field private view:[F

.field windowHeight:I

.field windowWidth:I

.field private world:[F

.field private wvp:[F


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 249
    const/16 v0, 0x9

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_9a

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_a4

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_ae

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_b8

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_c2

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_cc

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_d6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_e0

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_ea

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSettingForLCD:[[F

    .line 261
    const/16 v0, 0x9

    new-array v0, v0, [[F

    new-array v1, v3, [F

    fill-array-data v1, :array_f4

    aput-object v1, v0, v4

    new-array v1, v3, [F

    fill-array-data v1, :array_fe

    aput-object v1, v0, v5

    new-array v1, v3, [F

    fill-array-data v1, :array_108

    aput-object v1, v0, v6

    new-array v1, v3, [F

    fill-array-data v1, :array_112

    aput-object v1, v0, v3

    new-array v1, v3, [F

    fill-array-data v1, :array_11c

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [F

    fill-array-data v2, :array_126

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [F

    fill-array-data v2, :array_130

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [F

    fill-array-data v2, :array_13a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [F

    fill-array-data v2, :array_144

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSettingForLED:[[F

    return-void

    .line 249
    :array_9a
    .array-data 4
        0x0
        0x3ecccccd
        0x3f800000
    .end array-data

    :array_a4
    .array-data 4
        0x3f52d2d3
        0x3ef0f0f1
        0x3f0c8c8d
    .end array-data

    :array_ae
    .array-data 4
        0x3f52d2d3
        0x3f0c8c8d
        0x3ea0a0a1
    .end array-data

    :array_b8
    .array-data 4
        0x3eb4b4b5
        0x3f169697
        0x3e5cdcdd
    .end array-data

    :array_c2
    .array-data 4
        0x3dc8c8c9
        0x3ea0a0a1
        0x3f39b9ba
    .end array-data

    :array_cc
    .array-data 4
        0x3dc8c8c9
        0x3e5cdcdd
        0x3ec8c8c9
    .end array-data

    :array_d6
    .array-data 4
        0x3ea0a0a1
        0x3e20a0a1
        0x3f20a0a1
    .end array-data

    :array_e0
    .array-data 4
        0x3f028283
        0x3ebebebf
        0x3e5cdcdd
    .end array-data

    :array_ea
    .array-data 4
        0x3da0a0a1
        0x3ec8c8c9
        0x3f0c8c8d
    .end array-data

    .line 261
    :array_f4
    .array-data 4
        0x0
        0x3ecccccd
        0x3f800000
    .end array-data

    :array_fe
    .array-data 4
        0x3f43c3b5
        0x3ef0f0e9
        0x3f0c8c82
    .end array-data

    :array_108
    .array-data 4
        0x3f3ebebe
        0x3edcdcca
        0x3df0f0e9
    .end array-data

    :array_112
    .array-data 4
        0x3e8c8c72
        0x3f028273
        0x3df0f0e9
    .end array-data

    :array_11c
    .array-data 4
        0x3d209fe8
        0x3eaaaa9f
        0x3f7afaf8
    .end array-data

    :array_126
    .array-data 4
        0x0
        0x3df0f0e9
        0x3eb4b4af
    .end array-data

    :array_130
    .array-data 4
        0x3eb4b4af
        0x3e70f0e9
        0x3f34b4af
    .end array-data

    :array_13a
    .array-data 4
        0x3e5cdcca
        0x3dc8c8ac
        0x3d209fe8
    .end array-data

    :array_144
    .array-data 4
        0x3ea0a090
        0x3f20a090
        0x3f34b4af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;III)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/opengl/GLSurfaceView;
    .param p3, "phoneMode"    # I
    .param p4, "pWindowWidth"    # I
    .param p5, "pWindowHeight"    # I

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->DBG:Z

    .line 70
    const-string v0, "RippleInkRenderer"

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TAG:Ljava/lang/String;

    .line 72
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    .line 73
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    .line 75
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    .line 76
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    .line 78
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 79
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 81
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    .line 82
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->VCOUNT:I

    .line 84
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->unitCellWidth:F

    .line 85
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->unitCellHeight:F

    .line 87
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    .line 88
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    .line 90
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    .line 91
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub1:[F

    .line 93
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    .line 94
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub2:[F

    .line 97
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    .line 98
    new-array v0, v4, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    .line 99
    new-array v0, v4, [S

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    .line 101
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->textures0:[I

    .line 102
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->textures1:[I

    .line 105
    new-array v0, v7, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->view:[F

    .line 106
    new-array v0, v7, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->proj:[F

    .line 107
    new-array v0, v7, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->world:[F

    .line 108
    new-array v0, v7, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    .line 110
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mContext:Landroid/content/Context;

    .line 112
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    .line 113
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    .line 115
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    .line 116
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    .line 119
    const v0, 0x3f70a3d7

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->REDUCTION_RATE_NORMAL:F

    .line 122
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBitmapRatio:F

    .line 125
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_FRESENL:F

    .line 126
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_SPECULAR:F

    .line 127
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_EXPONENT:F

    .line 129
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_FRESENL:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    .line 130
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_SPECULAR:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    .line 131
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_EXPONENT:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    .line 134
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_FRESENL:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_FRESENL_MIN:F

    .line 135
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_SPECULAR:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    .line 136
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_EXPONENT:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_EXPONENT_RATIO_MIN:F

    .line 138
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_FRESENL_MAX:F

    .line 139
    const/high16 v0, 0x41200000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    .line 140
    const/high16 v0, 0x41a00000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    .line 141
    const v0, 0x3ccccccd

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_INTENSITY_MAX:F

    .line 142
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_Frenel:F

    .line 143
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_Specular:F

    .line 144
    const v0, 0x3dcccccd

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_exponent:F

    .line 145
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_INTENSITY_MAX:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverIntensity:F

    .line 146
    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverEnabled:Z

    .line 147
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPreviousRippleTime:J

    .line 148
    const-wide/16 v2, 0x640

    iput-wide v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->RIPPLE_WAIT_TIME:J

    .line 151
    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    .line 154
    const v0, 0x3f70a3d7

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mReductionRate:F

    .line 157
    const v0, 0x3f6e147b

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->refractiveIndex:F

    .line 158
    const v0, 0x3e051eb8

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->reflectionRatio:F

    .line 159
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio1:F

    .line 160
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio2:F

    .line 164
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 165
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 167
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    .line 168
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    .line 175
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForLandscape:F

    .line 176
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForPortrait:F

    .line 180
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateXForLandscape:F

    .line 181
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateXForPortrait:F

    .line 184
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateYForLandscape:F

    .line 185
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateYForPortrait:F

    .line 188
    const/high16 v0, -0x3dd00000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForPortrait:F

    .line 189
    const/high16 v0, -0x3e480000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForLandscape:F

    .line 192
    iput v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForLandscape:I

    .line 193
    iput v7, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForLandscape:I

    .line 194
    iput v7, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForPortrait:I

    .line 195
    iput v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForPortrait:I

    .line 198
    const/high16 v0, 0x42340000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForLandscape:F

    .line 199
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForLandscape:F

    .line 200
    const/high16 v0, 0x41c80000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForPortrait:F

    .line 201
    const/high16 v0, 0x42380000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForPortrait:F

    .line 202
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioAdjustPortrait:F

    .line 203
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioAdjustLandscape:F

    .line 204
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    .line 209
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    .line 210
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    .line 213
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downX:F

    .line 214
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downY:F

    .line 215
    const-wide v2, 0x4062c00000000000L

    iput-wide v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDragThreshold:D

    .line 216
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    .line 219
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->diffPressTime:J

    .line 220
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevPressTime:J

    .line 221
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    .line 222
    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSystemSoundChecked:Z

    .line 226
    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isFirstTouched:Z

    .line 227
    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    .line 228
    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isScreenTurnedOn:Z

    .line 231
    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isMakedASpenToucdUp:Z

    .line 233
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultX:F

    .line 234
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultY:F

    .line 239
    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isInkEnable:Z

    .line 240
    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isUseLCD:Z

    move-object v0, v1

    .line 245
    check-cast v0, [[F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    .line 246
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    .line 247
    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    .line 276
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    .line 277
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    .line 281
    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isShowCalled:Z

    .line 282
    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    .line 283
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    .line 284
    iput-boolean v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceChanged:Z

    .line 285
    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceCreated:Z

    .line 286
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevSurfaceWidth:I

    .line 293
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    .line 296
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->CPU_CLOCK_NUM:I

    .line 297
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 298
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    .line 299
    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    .line 302
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->GPU_FREQUNCY_NUM:I

    .line 303
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 304
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    .line 305
    iput-boolean v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    .line 307
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->CPU_CLOK_CONTROL:I

    .line 308
    iput v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->GPU_FREQ_CONTROL:I

    .line 310
    const v0, 0x88b8

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    .line 312
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ACQUIRE_DVFS:I

    .line 313
    iput v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->RELEASE_DVFS:I

    .line 315
    iput-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    .line 322
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    .line 323
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->preEffectType:I

    .line 335
    const-string v0, "RippleInkRenderer"

    const-string v1, "RippleInkRenderer Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mContext:Landroid/content/Context;

    .line 338
    iput-object p2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    .line 339
    iput p3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    .line 340
    iput p4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    .line 341
    iput p5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    .line 345
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setFalseDefaultEffectFlag()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->aquireCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->releaseCpuGpuMaxLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultX:F

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)I
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;

    .prologue
    .line 66
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultY:F

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;FFFZ)V
    .registers 5
    .param p0, "x0"    # Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ripple(FFFZ)V

    return-void
.end method

.method private acquireBooster(I)V
    .registers 8
    .param p1, "type"    # I

    .prologue
    .line 1270
    const/4 v0, 0x0

    .line 1271
    .local v0, "bestCpuClock":I
    const/4 v1, 0x0

    .line 1273
    .local v1, "bestGpuFreq":I
    if-nez p1, :cond_56

    .line 1275
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_55

    .line 1277
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    if-nez v2, :cond_55

    .line 1279
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    .line 1281
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    if-eqz v2, :cond_55

    .line 1283
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->CPU_CLOCK_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->getBestMaxFreq([II)I

    move-result v0

    .line 1284
    const-string v2, "RippleInkRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! CPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    aget v4, v4, v0

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1286
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 1309
    :cond_55
    :goto_55
    return-void

    .line 1293
    :cond_56
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_55

    .line 1295
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    if-nez v2, :cond_55

    .line 1297
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    .line 1299
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    if-eqz v2, :cond_55

    .line 1301
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->GPU_FREQUNCY_NUM:I

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->getBestMaxFreq([II)I

    move-result v1

    .line 1302
    const-string v2, "RippleInkRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "== DVFS == acquire!!! GPU, ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    iget-object v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1304
    iget-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TIME_FOR_CPU_GPU_MAX_LOCK:I

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_55
.end method

.method private aquireCpuGpuMaxLock()V
    .registers 2

    .prologue
    .line 1244
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_8

    .line 1246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->acquireBooster(I)V

    .line 1249
    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_10

    .line 1251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->acquireBooster(I)V

    .line 1253
    :cond_10
    return-void
.end method

.method private getBestMaxFreq([II)I
    .registers 9
    .param p1, "pArray"    # [I
    .param p2, "bestValue"    # I

    .prologue
    .line 1343
    const/4 v4, 0x0

    .line 1344
    .local v4, "value":I
    const v3, 0x7fffffff

    .line 1345
    .local v3, "prevdiff":I
    const/4 v1, 0x0

    .line 1346
    .local v1, "currdiff":I
    array-length v0, p1

    .line 1348
    .local v0, "arrayLenth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_18

    .line 1351
    aget v5, p1, v2

    sub-int v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1352
    if-ge v1, v3, :cond_15

    .line 1354
    move v4, v2

    .line 1355
    move v3, v1

    .line 1348
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1359
    :cond_18
    return v4
.end method

.method private initWaters()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 791
    const-string v0, "RippleInkRenderer"

    const-string v1, "initWaters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    .line 794
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x6

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    .line 796
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    .line 797
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    .line 798
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    .line 799
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub1:[F

    .line 800
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    .line 801
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub2:[F

    .line 803
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->VCOUNT:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    .line 805
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->VCOUNT:I

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    iget v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    iget v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    iget v6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    invoke-static/range {v0 .. v6}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->initWaters([F[SIIIII)V

    .line 810
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 812
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 813
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub1:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 814
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 815
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub2:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 816
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    invoke-static {v0, v7}, Ljava/util/Arrays;->fill([FF)V

    .line 817
    return-void
.end method

.method private loadShaderSetting()V
    .registers 5

    .prologue
    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "isInk":Z
    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 523
    const/4 v0, 0x1

    .line 526
    :cond_7
    const-string v1, "RippleInkRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInk = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    invoke-static {v1, v2, v0}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onInitSetting(IIZ)V

    .line 528
    invoke-static {}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onInitGPU()V

    .line 529
    return-void
.end method

.method private move()V
    .registers 18

    .prologue
    .line 824
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub1:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub2:[F

    if-eqz v1, :cond_2a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    if-nez v1, :cond_32

    .line 833
    :cond_2a
    const-string v1, "RippleInkRenderer"

    const-string v2, "initWaters don\'t called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_31
    return-void

    .line 838
    :cond_32
    const/4 v4, 0x1

    .line 839
    .local v4, "xSpan":I
    const/4 v3, 0x1

    .line 841
    .local v3, "ySpan":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    if-eqz v1, :cond_191

    .line 842
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForLandscape:I

    .line 843
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForLandscape:I

    .line 844
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v5, v1, v3

    .line 845
    .local v5, "imax":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v6, v1, v4

    .line 853
    .local v6, "jmax":I
    :goto_4e
    const/4 v15, 0x1

    .line 854
    .local v15, "result1":I
    const/16 v16, 0x1

    .line 856
    .local v16, "result2":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mReductionRate:F

    const/high16 v11, 0x3f000000

    invoke-static/range {v1 .. v11}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->move([F[FIIIIIIZFF)I

    move-result v1

    if-eqz v1, :cond_89

    if-eqz v15, :cond_89

    if-eqz v16, :cond_89

    .line 860
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_89

    .line 862
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a7

    .line 864
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    if-nez v1, :cond_89

    .line 866
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setRenderModeDirty()V

    .line 874
    :cond_89
    :goto_89
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_8a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    if-ge v12, v1, :cond_31

    .line 875
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_91
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    if-ge v14, v1, :cond_1ac

    .line 876
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v14

    add-int/2addr v1, v12

    mul-int/lit8 v13, v1, 0x3

    .line 877
    .local v13, "idx":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    aput v7, v1, v2

    .line 879
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x2

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x1

    aget v7, v7, v8

    aput v7, v1, v2

    .line 881
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    add-int/lit8 v8, v14, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v8, v9

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    aput v7, v1, v2

    .line 884
    add-int/lit8 v1, v12, -0x7

    if-lez v1, :cond_18d

    .line 885
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 887
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x7

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 889
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    add-int/lit8 v9, v14, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 891
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x0

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 893
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x1

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x2

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x7

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 895
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    add-int/lit8 v2, v13, 0x2

    aget v7, v1, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    add-int/lit8 v9, v14, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    mul-int/2addr v9, v10

    add-int/2addr v9, v12

    add-int/lit8 v9, v9, -0x6

    aget v8, v8, v9

    add-float/2addr v7, v8

    aput v7, v1, v2

    .line 875
    :cond_18d
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_91

    .line 847
    .end local v5    # "imax":I
    .end local v6    # "jmax":I
    .end local v12    # "i":I
    .end local v13    # "idx":I
    .end local v14    # "j":I
    .end local v15    # "result1":I
    .end local v16    # "result2":I
    :cond_191
    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForPortrait:I

    .line 848
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForPortrait:I

    .line 849
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    sub-int v5, v1, v3

    .line 850
    .restart local v5    # "imax":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    sub-int v6, v1, v4

    .restart local v6    # "jmax":I
    goto/16 :goto_4e

    .line 869
    .restart local v15    # "result1":I
    .restart local v16    # "result2":I
    :cond_1a7
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setRenderModeDirty()V

    goto/16 :goto_89

    .line 874
    .restart local v12    # "i":I
    .restart local v14    # "j":I
    :cond_1ac
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_8a
.end method

.method private perspectiveM([FFFFF)V
    .registers 15
    .param p1, "m"    # [F
    .param p2, "angle"    # F
    .param p3, "aspect"    # F
    .param p4, "near"    # F
    .param p5, "far"    # F

    .prologue
    const/4 v8, 0x0

    .line 948
    const-wide/high16 v2, 0x3fe0000000000000L

    const-wide v4, 0x400921fb54442d18L

    float-to-double v6, p2

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 949
    .local v0, "f":F
    sub-float v1, p4, p5

    .line 950
    .local v1, "range":F
    const/4 v2, 0x0

    div-float v3, v0, p3

    aput v3, p1, v2

    .line 951
    const/4 v2, 0x1

    aput v8, p1, v2

    .line 952
    const/4 v2, 0x2

    aput v8, p1, v2

    .line 953
    const/4 v2, 0x3

    aput v8, p1, v2

    .line 954
    const/4 v2, 0x4

    aput v8, p1, v2

    .line 955
    const/4 v2, 0x5

    aput v0, p1, v2

    .line 956
    const/4 v2, 0x6

    aput v8, p1, v2

    .line 957
    const/4 v2, 0x7

    aput v8, p1, v2

    .line 958
    const/16 v2, 0x8

    aput v8, p1, v2

    .line 959
    const/16 v2, 0x9

    aput v8, p1, v2

    .line 960
    const/16 v2, 0xa

    div-float v3, p5, v1

    aput v3, p1, v2

    .line 961
    const/16 v2, 0xb

    const/high16 v3, -0x40800000

    aput v3, p1, v2

    .line 962
    const/16 v2, 0xc

    aput v8, p1, v2

    .line 963
    const/16 v2, 0xd

    aput v8, p1, v2

    .line 964
    const/16 v2, 0xe

    mul-float v3, p4, p5

    div-float/2addr v3, v1

    aput v3, p1, v2

    .line 965
    const/16 v2, 0xf

    aput v8, p1, v2

    .line 966
    return-void
.end method

.method private releaseCpuGpuMaxLock()V
    .registers 2

    .prologue
    .line 1257
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-eqz v0, :cond_8

    .line 1259
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->releaseBooster(I)V

    .line 1262
    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_10

    .line 1264
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->releaseBooster(I)V

    .line 1266
    :cond_10
    return-void
.end method

.method private removeDefaultRunnable()V
    .registers 3

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_15

    .line 1217
    const-string v0, "RippleInkRenderer"

    const-string v1, "mDefaultRunnable isn\'t null, mParent.removeCallbacks(mDefaultRunnable)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 1222
    :cond_15
    return-void
.end method

.method private ripple(FFFZ)V
    .registers 13
    .param p1, "mx"    # F
    .param p2, "my"    # F
    .param p3, "intensity"    # F
    .param p4, "isTouchRipple"    # Z

    .prologue
    .line 925
    if-eqz p4, :cond_8

    .line 926
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPreviousRippleTime:J

    .line 928
    :cond_8
    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ripple(), mx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", my = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intensity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 930
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    iget v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v7}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->ripple([FIIIIFFF)V

    .line 932
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_52

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_5c

    .line 934
    :cond_52
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    if-eqz v0, :cond_5c

    .line 935
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 939
    :cond_5c
    return-void
.end method

.method private setFalseDefaultEffectFlag()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 1227
    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isFirstTouched:Z

    .line 1228
    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    .line 1229
    return-void
.end method

.method private setHoverEnable(Z)V
    .registers 4
    .param p1, "isEnable"    # Z

    .prologue
    .line 763
    if-eqz p1, :cond_19

    .line 765
    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_FRESENL_MIN:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    .line 767
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_SPECULAR_RATIO_MIN:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    .line 768
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_EXPONENT_RATIO_MIN:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverEnabled:Z

    .line 779
    :goto_18
    return-void

    .line 773
    :cond_19
    const-string v0, "Fresnel"

    const-string v1, "setHoverEnable is false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_FRESENL:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    .line 775
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_SPECULAR:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    .line 776
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->TOUCH_EXPONENT:F

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    .line 777
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverEnabled:Z

    goto :goto_18
.end method

.method private setRenderModeDirty()V
    .registers 3

    .prologue
    .line 904
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 905
    const-string v0, "RippleInkRenderer"

    const-string v1, "RENDERMODE_WHEN_DIRTY!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_1f

    .line 909
    :cond_15
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    if-eqz v0, :cond_1f

    .line 910
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 913
    :cond_1f
    return-void
.end method

.method private setRippleVersion(Z)V
    .registers 8
    .param p1, "isCheckEffectChange"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1001
    const-string v1, "RippleInkRenderer"

    const-string v2, "setRippleVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-boolean v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isInkEnable:Z

    if-eqz v1, :cond_36

    .line 1005
    :try_start_d
    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    .line 1006
    const-string v1, "RippleInkRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInkEffectColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_36} :catch_83

    .line 1012
    :cond_36
    :goto_36
    iget-boolean v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isInkEnable:Z

    if-eqz v1, :cond_88

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    if-eqz v1, :cond_88

    .line 1014
    const-string v1, "RippleInkRenderer"

    const-string v2, "Def.MODE = ModeType.RIPPLE_LIGHT_WITH_INK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    iput v5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    .line 1023
    :goto_47
    if-eqz p1, :cond_7e

    .line 1025
    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->preEffectType:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    if-eq v1, v2, :cond_7e

    .line 1027
    const-string v1, "RippleInkRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preEffectType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->preEffectType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1032
    :cond_7e
    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->preEffectType:I

    .line 1033
    return-void

    .line 1007
    :catch_83
    move-exception v0

    .line 1008
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_36

    .line 1019
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_88
    const-string v1, "RippleInkRenderer"

    const-string v2, "ModeType.RIPPLE_LIGHT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iput v4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    goto :goto_47
.end method


# virtual methods
.method public changeBackground(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1060
    const-string v0, "RippleInkRenderer"

    const-string v1, "changeBackground()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-virtual {p0, p1}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setBackground(Landroid/graphics/Bitmap;)V

    .line 1062
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1063
    return-void
.end method

.method public cleanUp()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1109
    const-string v0, "RippleInkRenderer"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->removeDefaultRunnable()V

    .line 1113
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setFalseDefaultEffectFlag()V

    .line 1114
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    .line 1115
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isShowCalled:Z

    .line 1116
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isScreenTurnedOn:Z

    .line 1117
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    .line 1119
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    if-ne v0, v3, :cond_33

    .line 1121
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isMakedASpenToucdUp:Z

    if-nez v0, :cond_33

    .line 1123
    const-string v0, "RippleInkRenderer"

    const-string v1, "Spen onTouch(ACTION UP) , because touch up wasn\'t maked by uper layer until cleanUp "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    float-to-int v1, v1

    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, v3, v2}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onTouch(IIIF)V

    .line 1125
    iput-boolean v3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isMakedASpenToucdUp:Z

    .line 1130
    :cond_33
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    new-instance v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$1;-><init>(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1144
    return-void
.end method

.method public clearAllEffect()V
    .registers 3

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->clearRipple()V

    .line 992
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 994
    const-string v0, "RippleInkRenderer"

    const-string v1, "clearInkValue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-static {}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->clearInkValue()V

    .line 997
    :cond_12
    return-void
.end method

.method public clearRipple()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 969
    const-string v0, "RippleInkRenderer"

    const-string v1, "clearRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    if-nez v0, :cond_d

    .line 986
    :cond_c
    :goto_c
    return-void

    .line 974
    :cond_d
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    array-length v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    if-lt v0, v1, :cond_c

    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    array-length v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    if-lt v0, v1, :cond_c

    .line 979
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 980
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocity:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 981
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 982
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub1:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 983
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->heightsSub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 984
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->velocitySub2:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 985
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    goto :goto_c
.end method

.method public destroyed()V
    .registers 3

    .prologue
    .line 1233
    const-string v0, "RippleInkRenderer"

    const-string v1, "destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_12

    .line 1237
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    .line 1239
    :cond_12
    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 622
    const-string v8, "RippleInkRenderer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "event  action: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", src = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%x"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v6, 0x0

    .line 625
    .local v6, "returnValueForSound":Z
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    if-nez v8, :cond_48

    .line 627
    const-string v8, "RippleInkRenderer"

    const-string v9, "drawCount == 0 Touch Return"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v6

    .line 757
    .end local v6    # "returnValueForSound":Z
    .local v7, "returnValueForSound":I
    :goto_47
    return v7

    .line 631
    .end local v7    # "returnValueForSound":I
    .restart local v6    # "returnValueForSound":Z
    :cond_48
    iget-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isFirstTouched:Z

    if-eqz v8, :cond_59

    .line 633
    const-string v8, "RippleInkRenderer"

    const-string v9, "isFirstTouched is true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->removeDefaultRunnable()V

    .line 635
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setFalseDefaultEffectFlag()V

    .line 638
    :cond_59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    .line 639
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    .line 641
    iget-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    if-eqz v8, :cond_16b

    .line 642
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioAdjustLandscape:F

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    .line 643
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForLandscape:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    .line 644
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    .line 645
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    neg-float v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForLandscape:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    .line 653
    :goto_9d
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->effectType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_ca

    .line 655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v5

    .line 657
    .local v5, "pressure":F
    float-to-double v8, v5

    const-wide/high16 v10, 0x3ff0000000000000L

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_af

    .line 659
    const/high16 v5, 0x3f800000

    .line 662
    :cond_af
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_bd

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a1

    .line 664
    :cond_bd
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    float-to-int v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    float-to-int v9, v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10, v5}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onTouch(IIIF)V

    .line 665
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isMakedASpenToucdUp:Z

    .line 674
    .end local v5    # "pressure":F
    :cond_ca
    :goto_ca
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_1bd

    .line 677
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    .line 678
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    .line 679
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    .line 680
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downX:F

    .line 681
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downY:F

    .line 682
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    .line 683
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevPressTime:J

    .line 684
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->diffPressTime:J

    .line 686
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    const/high16 v11, 0x40800000

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ripple(FFFZ)V

    .line 687
    const/4 v6, 0x1

    .line 728
    :cond_fd
    :goto_fd
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_268

    .line 729
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 731
    .local v3, "hoverMoveTime":J
    iget-wide v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPreviousRippleTime:J

    sub-long v8, v3, v8

    const-wide/16 v10, 0x640

    cmp-long v8, v8, v10

    if-lez v8, :cond_121

    iget-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverEnabled:Z

    if-nez v8, :cond_121

    .line 732
    const-string v8, "RippleInkRenderer"

    const-string v9, "setHoverEnable true ======================="

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    .line 736
    :cond_121
    iget-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverEnabled:Z

    if-eqz v8, :cond_15e

    .line 738
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_Frenel:F

    add-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    .line 739
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_Specular:F

    add-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    .line 740
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->hoverPlus_exponent:F

    add-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    .line 742
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_FRESENL_MAX:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_146

    .line 743
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_FRESENL_MAX:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    .line 745
    :cond_146
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_152

    .line 746
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_SPECULAR_RATIO_MAX:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    .line 748
    :cond_152
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_15e

    .line 749
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->HOVER_EXPONENT_RATIO_MAX:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    .line 751
    :cond_15e
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mHoverIntensity:F

    const/4 v11, 0x0

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ripple(FFFZ)V

    .end local v3    # "hoverMoveTime":J
    :cond_168
    :goto_168
    move v7, v6

    .line 757
    .restart local v7    # "returnValueForSound":I
    goto/16 :goto_47

    .line 647
    .end local v7    # "returnValueForSound":I
    :cond_16b
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioAdjustPortrait:F

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    .line 648
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForPortrait:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    .line 649
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x40000000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    .line 650
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    neg-float v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForPortrait:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    goto/16 :goto_9d

    .line 667
    .restart local v5    # "pressure":F
    :cond_1a1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v8

    and-int/lit16 v8, v8, 0x4002

    const/16 v9, 0x4002

    if-ne v8, v9, :cond_ca

    .line 669
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    float-to-int v8, v8

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    float-to-int v9, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    invoke-static {v8, v9, v10, v5}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onTouch(IIIF)V

    .line 670
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isMakedASpenToucdUp:Z

    goto/16 :goto_ca

    .line 689
    .end local v5    # "pressure":F
    :cond_1bd
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_218

    .line 691
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    .line 692
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    .line 693
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downX:F

    sub-float v1, v8, v9

    .line 694
    .local v1, "dx":F
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downY:F

    sub-float v2, v8, v9

    .line 695
    .local v2, "dy":F
    float-to-double v8, v1

    const-wide/high16 v10, 0x4000000000000000L

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    float-to-double v10, v2

    const-wide/high16 v12, 0x4000000000000000L

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v0, v8

    .line 696
    .local v0, "distForwWave":I
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    .line 697
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseX:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downX:F

    .line 698
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mouseY:F

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->downY:F

    .line 700
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    int-to-double v8, v8

    iget-wide v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDragThreshold:D

    cmpl-double v8, v8, v10

    if-lez v8, :cond_fd

    .line 701
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    .line 702
    const/4 v8, 0x0

    iput v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDistance:I

    .line 704
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    const/high16 v11, 0x40400000

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ripple(FFFZ)V

    .line 705
    const/4 v6, 0x1

    goto/16 :goto_fd

    .line 708
    .end local v0    # "distForwWave":I
    .end local v1    # "dx":F
    .end local v2    # "dy":F
    :cond_218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_247

    .line 710
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    .line 711
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    .line 713
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevPressTime:J

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->diffPressTime:J

    .line 715
    iget-wide v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->diffPressTime:J

    const-wide/16 v10, 0x258

    cmp-long v8, v8, v10

    if-lez v8, :cond_fd

    .line 717
    iget v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glY:F

    iget v9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->glX:F

    iget v10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    const/high16 v11, 0x40800000

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, v8, v9, v10, v11}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->ripple(FFFZ)V

    .line 718
    const/4 v6, 0x1

    goto/16 :goto_fd

    .line 720
    :cond_247
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_257

    .line 721
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    .line 722
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setHoverEnable(Z)V

    goto/16 :goto_fd

    .line 725
    :cond_257
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_fd

    .line 726
    const-string v8, "RippleInkRenderer"

    const-string v9, "========================= ACTION_HOVER_ENTER"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fd

    .line 753
    :cond_268
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_168

    .line 754
    const-string v8, "RippleInkRenderer"

    const-string v9, "ACTION_HOVER_EXIT"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_168
.end method

.method public onConfigurationChanged()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 611
    const-string v0, "RippleInkRenderer"

    const-string v1, "= onConfigurationChanged = Renderer onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    if-ne v0, v2, :cond_16

    .line 614
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    .line 615
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    .line 616
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 618
    :cond_16
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 24
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_27

    .line 538
    const-string v1, "RippleInkRenderer"

    const-string v2, "Change Effect Type and loadShaderSetting()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->loadShaderSetting()V

    .line 540
    :goto_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_27

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mEffectChangeCheckArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_14

    .line 546
    :cond_27
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_51

    .line 548
    const-string v1, "RippleInkRenderer"

    const-string v2, "Change opengl BG Texture"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-static {}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onFreeBGTextures()V

    .line 550
    invoke-static {}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onLoadBGTextures()V

    .line 551
    :goto_3e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_51

    .line 553
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBgChangeCheckArray:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3e

    .line 557
    :cond_51
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    if-nez v1, :cond_148

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBitmapRatio:F

    div-float/2addr v8, v9

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onDrawFrame([F[F[SIII[FIIIIFFFFFFFFFF)V

    .line 585
    :goto_ec
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    if-eqz v1, :cond_122

    .line 587
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceChanged:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_101

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_1df

    .line 589
    :cond_101
    const-string v1, "RippleInkRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "= onConfigurationChanged = onDrawFrame isSurfaceChanged == true && isOrientationChanged == true, isOrientationChangCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    .line 598
    :cond_122
    :goto_122
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceChanged:Z

    .line 600
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    if-lez v1, :cond_136

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    if-nez v1, :cond_136

    .line 601
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->move()V

    .line 603
    :cond_136
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_147

    .line 605
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    .line 607
    :cond_147
    return-void

    .line 573
    :cond_148
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->vertices:[F

    array-length v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuHeights:[F

    array-length v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->indices:[S

    array-length v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_WIDTH:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->MESH_SIZE_HEIGHT:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBitmapRatio:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    div-int/lit8 v11, v11, 0x2

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->refractiveIndex:F

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->reflectionRatio:F

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio1:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->alphaRatio2:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v17, v0

    aget-object v16, v16, v17

    const/16 v17, 0x0

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mInkEffectColor:I

    move/from16 v19, v0

    aget-object v18, v18, v19

    const/16 v19, 0x2

    aget v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mFresnelRatio:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mSpecularRatio:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mExponentRatio:F

    move/from16 v21, v0

    invoke-static/range {v1 .. v21}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onDrawFrame([F[F[SIII[FIIIIFFFFFFFFFF)V

    goto/16 :goto_ec

    .line 594
    :cond_1df
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChangCount:I

    goto/16 :goto_122
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 21
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 436
    const-string v2, "RippleInkRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSurfaceChanged, width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceChanged:Z

    .line 439
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->drawCount:I

    .line 441
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevSurfaceWidth:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_40

    .line 443
    const-string v2, "RippleInkRenderer"

    const-string v3, "Because of isPrevSurfaceWidth == width, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :goto_3f
    return-void

    .line 447
    :cond_40
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceCreated:Z

    if-nez v2, :cond_54

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    if-nez v2, :cond_54

    .line 449
    const-string v2, "RippleInkRenderer"

    const-string v3, "Because of ((isSurfaceCreated == false) && (mPhoneMode == PORTRAIT_MODE)), return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 453
    :cond_54
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v2, :cond_60

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v2, :cond_6e

    .line 455
    :cond_60
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    if-eqz v2, :cond_6e

    .line 456
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 459
    :cond_6e
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevSurfaceWidth:I

    .line 460
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceCreated:Z

    .line 462
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_12b

    .line 464
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    .line 471
    :goto_84
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    if-eqz v2, :cond_132

    .line 473
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForLandscape:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    .line 478
    :goto_92
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mPhoneMode:I

    if-nez v2, :cond_13c

    .line 480
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    .line 481
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    .line 489
    :goto_a8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    int-to-float v3, v3

    div-float v13, v2, v3

    .line 491
    .local v13, "ratio":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->view:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->proj:[F

    const/high16 v4, 0x42340000

    const v6, 0x3dcccccd

    const/high16 v7, 0x43fa0000

    move-object/from16 v2, p0

    move v5, v13

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->perspectiveM([FFFFF)V

    .line 494
    const/4 v14, 0x0

    .line 495
    .local v14, "translateX":F
    const/4 v15, 0x0

    .line 496
    .local v15, "translateY":F
    const/16 v16, 0x0

    .line 498
    .local v16, "translateZ":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    if-eqz v2, :cond_14a

    .line 500
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateXForLandscape:F

    .line 501
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateYForLandscape:F

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForLandscape:F

    move/from16 v16, v0

    .line 511
    :goto_f0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->world:[F

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 512
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->view:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->world:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    const/4 v3, 0x0

    move/from16 v0, v16

    invoke-static {v2, v3, v14, v15, v0}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->proj:[F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->wvp:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 516
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->loadShaderSetting()V

    goto/16 :goto_3f

    .line 468
    .end local v13    # "ratio":F
    .end local v14    # "translateX":F
    .end local v15    # "translateY":F
    .end local v16    # "translateZ":F
    :cond_12b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mLandscape:Z

    goto/16 :goto_84

    .line 475
    :cond_132
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForPortrait:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForRipple:F

    goto/16 :goto_92

    .line 485
    :cond_13c
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenWidth:I

    .line 486
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mScreenHeight:I

    goto/16 :goto_a8

    .line 506
    .restart local v13    # "ratio":F
    .restart local v14    # "translateX":F
    .restart local v15    # "translateY":F
    .restart local v16    # "translateZ":F
    :cond_14a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateXForPortrait:F

    .line 507
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateYForPortrait:F

    .line 508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForPortrait:F

    move/from16 v16, v0

    goto :goto_f0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 421
    const-string v0, "RippleInkRenderer"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onLoadBGTextures()V

    .line 424
    invoke-static {}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->onLoadWaterTextures()V

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isSurfaceCreated:Z

    .line 427
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->prevSurfaceWidth:I

    .line 428
    return-void
.end method

.method public releaseBooster(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    .line 1313
    if-nez p1, :cond_1a

    .line 1315
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    if-eqz v0, :cond_19

    .line 1317
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_17

    .line 1319
    const-string v0, "RippleInkRenderer"

    const-string v1, "== DVFS == cpu MaxClock Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1323
    :cond_17
    iput-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedCPUClockTable:[I

    .line 1339
    :cond_19
    :goto_19
    return-void

    .line 1328
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_19

    .line 1330
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_2e

    .line 1332
    const-string v0, "RippleInkRenderer"

    const-string v1, "== DVFS == gpu MaxFreq Booster.release()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1336
    :cond_2e
    iput-object v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->supportedGPUFreqTable:[I

    goto :goto_19
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1147
    const-string v0, "RippleInkRenderer"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->clearAllEffect()V

    .line 1150
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isTouched:Z

    .line 1151
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isScreenTurnedOn:Z

    .line 1153
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->removeDefaultRunnable()V

    .line 1154
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setFalseDefaultEffectFlag()V

    .line 1156
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_27

    .line 1158
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    if-eqz v0, :cond_27

    .line 1159
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1161
    :cond_27
    return-void
.end method

.method public screenTurnedOn()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1100
    const-string v0, "RippleInkRenderer"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->removeDefaultRunnable()V

    .line 1104
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    .line 1105
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isScreenTurnedOn:Z

    .line 1106
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1044
    const-string v0, "RippleInkRenderer"

    const-string v1, "setBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    .line 1047
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_21

    .line 1049
    const/high16 v0, 0x3f800000

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBitmapRatio:F

    .line 1056
    :goto_1b
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapBG:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->transferBGBitmap(Landroid/graphics/Bitmap;)V

    .line 1057
    return-void

    .line 1053
    :cond_21
    iget v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowWidth:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->windowHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mBitmapRatio:F

    goto :goto_1b
.end method

.method public setResourcesBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1037
    const-string v0, "RippleInkRenderer"

    const-string v1, "setResourcesBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iput-object p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    .line 1039
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->bitmapWater:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/sec/android/visualeffect/rippleink/JniRippleInkRender;->transferWaterBitmap(Landroid/graphics/Bitmap;)V

    .line 1040
    return-void
.end method

.method public setRippleConfiguration(IIFFFFIIIIFFFFI)V
    .registers 19
    .param p1, "param_NUM_DETAILS_WIDTH"    # I
    .param p2, "param_NUM_DETAILS_HEIGHT"    # I
    .param p3, "param_intensityForLandscape"    # F
    .param p4, "param_intensityForPortrait"    # F
    .param p5, "param_translateZForPortrait"    # F
    .param p6, "param_translateZForLandscape"    # F
    .param p7, "param_spanXForLandscape"    # I
    .param p8, "param_spanYForLandscape"    # I
    .param p9, "param_spanXForPortrait"    # I
    .param p10, "param_spanYForPortrait"    # I
    .param p11, "param_XRatioForLandscape"    # F
    .param p12, "param_YRatioForLandscape"    # F
    .param p13, "param_XRatioForPortrait"    # F
    .param p14, "param_YRatioForPortrait"    # F
    .param p15, "param_rippleDragThreshold"    # I

    .prologue
    .line 356
    const-string v1, "RippleInkRenderer"

    const-string v2, "setRippleConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    .line 360
    iput p2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    .line 363
    iput p3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForLandscape:F

    .line 364
    iput p4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->intensityForPortrait:F

    .line 367
    iput p5, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForPortrait:F

    .line 368
    iput p6, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->translateZForLandscape:F

    .line 371
    iput p7, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForLandscape:I

    .line 372
    iput p8, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForLandscape:I

    .line 373
    iput p9, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanXForPortrait:I

    .line 374
    iput p10, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->spanYForPortrait:I

    .line 376
    iput p11, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForLandscape:F

    .line 377
    iput p12, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForLandscape:F

    .line 378
    move/from16 v0, p13

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->XRatioForPortrait:F

    .line 379
    move/from16 v0, p14

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->YRatioForPortrait:F

    .line 381
    move/from16 v0, p15

    int-to-double v1, v0

    iput-wide v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->rippleDragThreshold:D

    .line 383
    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    .line 384
    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    add-int/lit8 v1, v1, -0x4

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    .line 385
    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_WIDTH:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->SURFACE_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->VCOUNT:I

    .line 387
    iget v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_WIDTH:I

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->NUM_DETAILS_HEIGHT:I

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->max:I

    .line 389
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->initWaters()V

    .line 390
    return-void
.end method

.method public setValueOfDVFS(ZIZI)V
    .registers 8
    .param p1, "isCpuClock"    # Z
    .param p2, "cpuClockIndex"    # I
    .param p3, "isGpuFreq"    # Z
    .param p4, "gpuFreqIndex"    # I

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    .line 404
    iput p2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->CPU_CLOCK_NUM:I

    .line 405
    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictCPUClock = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == CPU_CLOCK_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->CPU_CLOCK_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iput-boolean p3, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    .line 410
    iput p4, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->GPU_FREQUNCY_NUM:I

    .line 411
    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == isRestrictGPUFreq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== DVFS == GPU_FREQUNCY_NUM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->GPU_FREQUNCY_NUM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return-void
.end method

.method public setValueOfInk(Z)V
    .registers 5
    .param p1, "isSecFeaureInkEnabled"    # Z

    .prologue
    .line 394
    iput-boolean p1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isInkEnable:Z

    .line 395
    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInkEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isInkEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-object v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSettingForLED:[[F

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->inkColorFromSetting:[[F

    .line 397
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setRippleVersion(Z)V

    .line 398
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1068
    const-string v0, "RippleInkRenderer"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setRippleVersion(Z)V

    .line 1073
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isFirstTouched:Z

    .line 1074
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isShowCalled:Z

    .line 1075
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isOrientationChanged:Z

    .line 1076
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->setFalseDefaultEffectFlag()V

    .line 1078
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictCPUClock:Z

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->isRestrictGPUFreq:Z

    if-eqz v0, :cond_5b

    .line 1080
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    if-nez v0, :cond_5b

    .line 1082
    const-string v0, "RippleInkRenderer"

    const-string v1, "== DVFS == new DVFSHandlerRipple"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;-><init>(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDVFSHandlerRipple:Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$DVFSHandlerForRipple;

    .line 1085
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_45

    .line 1087
    const-string v0, "RippleInkRenderer"

    const-string v1, "== DVFS == new cpuMaxClockBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->cpuMaxClockBooster:Landroid/os/DVFSHelper;

    .line 1090
    :cond_45
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_5b

    .line 1092
    const-string v0, "RippleInkRenderer"

    const-string v1, "== DVFS == new gpuMaxFreqBooster"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mContext:Landroid/content/Context;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->gpuMaxFreqBooster:Landroid/os/DVFSHelper;

    .line 1097
    :cond_5b
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 7
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 1166
    const-string v0, "RippleInkRenderer"

    const-string v1, "showUnlockAffordance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    const-string v0, "RippleInkRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calledScreenTurnedOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    invoke-direct {p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->removeDefaultRunnable()V

    .line 1170
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->calledScreenTurnedOn:Z

    if-eqz v0, :cond_62

    .line 1172
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultX:F

    .line 1173
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->defaultY:F

    .line 1175
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_54

    .line 1177
    const-string v0, "RippleInkRenderer"

    const-string v1, "mDefaultRunnable,  new Runnable()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    new-instance v0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer$2;-><init>(Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    .line 1206
    :cond_54
    const-string v0, "RippleInkRenderer"

    const-string v1, "mDefaultRunnable, postDelayed()!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v0, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mParent:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcom/sec/android/visualeffect/rippleink/RippleInkRenderer;->mDefaultRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1209
    :cond_62
    return-void
.end method
