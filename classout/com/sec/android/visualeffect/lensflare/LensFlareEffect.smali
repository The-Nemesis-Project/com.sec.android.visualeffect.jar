.class public Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
.super Landroid/widget/FrameLayout;
.source "LensFlareEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;,
        Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;,
        Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseIn;,
        Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;
    }
.end annotation


# static fields
.field private static final sound_tap_path:Ljava/lang/String; = "/system/media/audio/ui/lens_flare_tap.ogg"

.field private static final sound_unlock_path:Ljava/lang/String; = "/system/media/audio/ui/lens_flare_unlock.ogg"


# instance fields
.field private final AFFORDANCE_OFF_DURATION:I

.field private final AFFORDANCE_ON_DURATION:I

.field private final DBG:Z

.field private final FADEOUT_ANIMATION_DURATION:I

.field private FINGER_HOVER_Y_OFFSET:I

.field private final FOG_MAX_ALPHA:F

.field private final FOG_ON_DURATION:I

.field private final HEXAGON_CIRCLE_TOTAL:I

.field private HEXAGON_TAP_TOTAL:I

.field private HEXAGON_TOTAL:I

.field private final HOVER_DURATION:I

.field private final HOVER_LIGHT_IN_DURATION:I

.field private final HOVER_LIGHT_OUT_DURATION:I

.field private MAX_ALPHA_DISTANCE:I

.field private PEN_HOVER_Y_OFFSET:I

.field private final SHOW_ANIMATION_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private final TAP_ANIMATION_DURATION:I

.field private TAP_AREA_RADIUS:I

.field private final UNLOCK_ANIMATION_DURATION:I

.field private final UNLOCK_SOUND_PLAY_TIME:J

.field private final X_OFFSET:I

.field private Y_OFFSET:I

.field private affordanceAnimationValue:F

.field private affordanceOffAnimator:Landroid/animation/ValueAnimator;

.field private affordanceOnAnimator:Landroid/animation/ValueAnimator;

.field private affordancePoint:Landroid/graphics/Point;

.field private affordanceRunnable:Ljava/lang/Runnable;

.field private createdDelaytime:J

.field private currentX:F

.field private currentY:F

.field private defaultConfig:Landroid/graphics/Bitmap$Config;

.field private defaultInSampleSize:F

.field private distance:D

.field private distancePerMaxAlpha:F

.field private fadeOutAnimator:Landroid/animation/ValueAnimator;

.field private fadeoutAnimationValue:F

.field private fogAlpha:F

.field private fogAnimationValue:F

.field private fogOnAnimator:Landroid/animation/ValueAnimator;

.field private globalAlpha:F

.field private hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private hexagonDistance:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private hexagonRes:[I

.field private hexagonRotation:[I

.field private hexagonScale:[F

.field private hexagon_blue_id:I

.field private hexagon_green_id:I

.field private hexagon_orange_id:I

.field private hoverAnimator:Landroid/animation/ValueAnimator;

.field private hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private hoverLightAnimationValue:F

.field private hoverLightInAnimator:Landroid/animation/ValueAnimator;

.field private hoverLightOutAnimator:Landroid/animation/ValueAnimator;

.field private hoverX:F

.field private hoverY:F

.field private hoverlight_id:I

.field private isBeforeInit:Z

.field private isPlayAffordance:Z

.field private isSoundEnable:Z

.field private isSystemSoundChecked:Z

.field private isTouched:Z

.field private lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private lightObj:Landroid/widget/FrameLayout;

.field private lightTap:Landroid/widget/FrameLayout;

.field private light_id:I

.field private longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private long_light_id:I

.field private mContext:Landroid/content/Context;

.field private mFirstCreatedRunnable:Ljava/lang/Runnable;

.field private objAlpha:F

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;

.field private particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private particle_id:I

.field private rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private rainbow_id:I

.field private randomRotation:F

.field private releaseSoundRunnable:Ljava/lang/Runnable;

.field private ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private ring_id:I

.field private screenHeight:I

.field private screenWidth:I

.field private showStartX:F

.field private showStartY:F

.field private sound_tap:I

.field private sound_unlock:I

.field private soundpool:Landroid/media/SoundPool;

.field private tapAnimationValue:F

.field private tapAnimator:Landroid/animation/ValueAnimator;

.field private tapHexRandomPoint:[Landroid/graphics/Point;

.field private tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

.field private tapHexagonScale:[F

.field private tap_sound_id:I

.field private unlockAnimationValue:F

.field private unlockAnimator:Landroid/animation/ValueAnimator;

.field private unlock_sound_id:I

.field private vignetting:Landroid/widget/ImageView;

.field private vignettingAlpha:F

.field private vignetting_id:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x1f4

    const/16 v4, -0x50

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    const-string v0, "LensFlare"

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAG:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_CIRCLE_TOTAL:I

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    .line 86
    const v0, 0x3f19999a

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_MAX_ALPHA:F

    .line 87
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    .line 88
    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->SHOW_ANIMATION_DURATION:I

    .line 89
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_ANIMATION_DURATION:I

    .line 90
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_ANIMATION_DURATION:I

    .line 91
    const v0, 0x186a0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_DURATION:I

    .line 92
    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_IN_DURATION:I

    .line 93
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_OUT_DURATION:I

    .line 94
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_ON_DURATION:I

    .line 95
    const/16 v0, 0x44c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_OFF_DURATION:I

    .line 96
    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    .line 97
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_ON_DURATION:I

    .line 98
    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FADEOUT_ANIMATION_DURATION:I

    .line 99
    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->X_OFFSET:I

    .line 100
    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    .line 101
    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FINGER_HOVER_Y_OFFSET:I

    .line 102
    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->PEN_HOVER_Y_OFFSET:I

    .line 104
    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    .line 110
    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSoundEnable:Z

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->DBG:Z

    .line 112
    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    .line 113
    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 114
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->createdDelaytime:J

    .line 115
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_SOUND_PLAY_TIME:J

    .line 116
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    .line 119
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    .line 120
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    .line 121
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultConfig:Landroid/graphics/Bitmap$Config;

    .line 122
    const/high16 v0, 0x40000000

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    .line 123
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    .line 139
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    .line 140
    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x1f4

    const/16 v4, -0x50

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    const-string v0, "LensFlare"

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAG:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_CIRCLE_TOTAL:I

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    .line 86
    const v0, 0x3f19999a

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_MAX_ALPHA:F

    .line 87
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    .line 88
    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->SHOW_ANIMATION_DURATION:I

    .line 89
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_ANIMATION_DURATION:I

    .line 90
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_ANIMATION_DURATION:I

    .line 91
    const v0, 0x186a0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_DURATION:I

    .line 92
    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_IN_DURATION:I

    .line 93
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_OUT_DURATION:I

    .line 94
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_ON_DURATION:I

    .line 95
    const/16 v0, 0x44c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_OFF_DURATION:I

    .line 96
    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    .line 97
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_ON_DURATION:I

    .line 98
    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FADEOUT_ANIMATION_DURATION:I

    .line 99
    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->X_OFFSET:I

    .line 100
    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    .line 101
    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FINGER_HOVER_Y_OFFSET:I

    .line 102
    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->PEN_HOVER_Y_OFFSET:I

    .line 104
    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    .line 110
    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSoundEnable:Z

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->DBG:Z

    .line 112
    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    .line 113
    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 114
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->createdDelaytime:J

    .line 115
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_SOUND_PLAY_TIME:J

    .line 116
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    .line 119
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    .line 120
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    .line 121
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultConfig:Landroid/graphics/Bitmap$Config;

    .line 122
    const/high16 v0, 0x40000000

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    .line 123
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    .line 151
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    .line 152
    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v5, 0x1f4

    const/16 v4, -0x50

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    const-string v0, "LensFlare"

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAG:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_CIRCLE_TOTAL:I

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    .line 86
    const v0, 0x3f19999a

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_MAX_ALPHA:F

    .line 87
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    .line 88
    const/16 v0, 0x1770

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->SHOW_ANIMATION_DURATION:I

    .line 89
    const/16 v0, 0xfa0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_ANIMATION_DURATION:I

    .line 90
    const/16 v0, 0x4b0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_ANIMATION_DURATION:I

    .line 91
    const v0, 0x186a0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_DURATION:I

    .line 92
    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_IN_DURATION:I

    .line 93
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HOVER_LIGHT_OUT_DURATION:I

    .line 94
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_ON_DURATION:I

    .line 95
    const/16 v0, 0x44c

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->AFFORDANCE_OFF_DURATION:I

    .line 96
    const/16 v0, 0x258

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    .line 97
    const/16 v0, 0x64

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FOG_ON_DURATION:I

    .line 98
    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FADEOUT_ANIMATION_DURATION:I

    .line 99
    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->X_OFFSET:I

    .line 100
    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    .line 101
    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FINGER_HOVER_Y_OFFSET:I

    .line 102
    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->PEN_HOVER_Y_OFFSET:I

    .line 104
    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    .line 110
    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSoundEnable:Z

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->DBG:Z

    .line 112
    iput-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    .line 113
    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 114
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->createdDelaytime:J

    .line 115
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->UNLOCK_SOUND_PLAY_TIME:J

    .line 116
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    .line 119
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    .line 120
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    .line 121
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultConfig:Landroid/graphics/Bitmap$Config;

    .line 122
    const/high16 v0, 0x40000000

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    .line 123
    const v0, 0x3f4ccccd

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    .line 145
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    .line 146
    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 147
    return-void
.end method

.method static synthetic access$002(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedDragPos()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedHover()V

    return-void
.end method

.method static synthetic access$1102(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightAnimationValue:F

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedHoverLight()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceAnimationValue:F

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceAnimationValue:F

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedAffordance()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Landroid/animation/Animator;)V
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->playUnlockAffordance()V

    return-void
.end method

.method static synthetic access$1902(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAnimationValue:F

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lensFlareinit()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedDragAlpha()V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedTap()V

    return-void
.end method

.method static synthetic access$602(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeoutAnimationValue:F

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedFadeOut()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;F)F
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;
    .param p1, "x1"    # F

    .prologue
    .line 32
    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimationValue:F

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V
    .registers 1
    .param p0, "x0"    # Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedUnlock()V

    return-void
.end method

.method private animatedAffordance()V
    .registers 3

    .prologue
    .line 747
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceAnimationValue:F

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    .line 748
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 749
    return-void
.end method

.method private animatedDragAlpha()V
    .registers 6

    .prologue
    .line 711
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAnimationValue:F

    const/high16 v3, 0x3f800000

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    .line 712
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    .line 713
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    const/high16 v3, 0x40400000

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAlpha:F

    .line 714
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    const v3, 0x3fa66666

    mul-float/2addr v2, v3

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v2

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignettingAlpha:F

    .line 716
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 717
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignettingAlpha:F

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 719
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3b
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_4b

    .line 720
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v0, v2, v1

    .line 721
    .local v0, "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAlpha:F

    invoke-direct {p0, v0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 719
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 723
    .end local v0    # "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    :cond_4b
    return-void
.end method

.method private animatedDragPos()V
    .registers 13

    .prologue
    const/high16 v6, 0x3f800000

    .line 695
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    mul-float/2addr v0, v6

    add-float v11, v6, v0

    .line 696
    .local v11, "scale":F
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v2, v11

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    .line 697
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v2, v11

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    .line 698
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimationValue:F

    neg-float v0, v0

    const/high16 v2, 0x41f00000

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    const/high16 v3, 0x43200000

    mul-float/2addr v2, v3

    sub-float v10, v0, v2

    .line 699
    .local v10, "rotation":F
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v0, v10}, Landroid/view/View;->setRotation(F)V

    .line 701
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 703
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_38
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v9, v0, :cond_63

    .line 704
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v1, v0, v9

    .line 705
    .local v1, "hex":Landroid/widget/ImageView;
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    aget v7, v0, v9

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRotation:[I

    aget v8, v0, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFFFI)V

    .line 703
    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    .line 708
    .end local v1    # "hex":Landroid/widget/ImageView;
    :cond_63
    return-void
.end method

.method private animatedFadeOut()V
    .registers 6

    .prologue
    .line 726
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogAlpha:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeoutAnimationValue:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 727
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignettingAlpha:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeoutAnimationValue:F

    mul-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 729
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_28

    .line 730
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v0, v2, v1

    .line 731
    .local v0, "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAlpha:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeoutAnimationValue:F

    mul-float/2addr v2, v3

    invoke-direct {p0, v0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 729
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 733
    .end local v0    # "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    :cond_28
    return-void
.end method

.method private animatedHover()V
    .registers 7

    .prologue
    const/high16 v5, 0x40400000

    const/high16 v4, 0x40000000

    .line 637
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverX:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 638
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverY:F

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 639
    return-void
.end method

.method private animatedHoverLight()V
    .registers 4

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightAnimationValue:F

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 643
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightAnimationValue:F

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 644
    return-void
.end method

.method private animatedTap()V
    .registers 20

    .prologue
    .line 648
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    const/high16 v16, 0x3f000000

    cmpg-float v15, v15, v16

    if-gez v15, :cond_af

    const/high16 v1, 0x3f800000

    .line 649
    .local v1, "alpha":F
    :goto_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    mul-float/2addr v1, v15

    .line 651
    const v15, 0x3e4ccccd

    const v16, 0x3f4ccccd

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v17, v0

    mul-float v16, v16, v17

    add-float v2, v15, v16

    .line 652
    .local v2, "distanceScale":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    if-ge v4, v15, :cond_c3

    .line 653
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v3, v15, v4

    .line 654
    .local v3, "hex":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagonScale:[F

    aget v15, v15, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v16, v0

    const v17, 0x3f4ccccd

    mul-float v16, v16, v17

    const v17, 0x3f333333

    add-float v16, v16, v17

    mul-float v10, v15, v16

    .line 657
    .local v10, "scale":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v15, v10

    invoke-virtual {v3, v15}, Landroid/view/View;->setScaleX(F)V

    .line 658
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v15, v10

    invoke-virtual {v3, v15}, Landroid/view/View;->setScaleY(F)V

    .line 660
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexRandomPoint:[Landroid/graphics/Point;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v13, v15, v16

    .line 661
    .local v13, "tx":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexRandomPoint:[Landroid/graphics/Point;

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v2

    add-float v14, v15, v16

    .line 663
    .local v14, "ty":F
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    sub-float/2addr v13, v15

    .line 664
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x40000000

    div-float v15, v15, v16

    sub-float/2addr v14, v15

    .line 666
    invoke-virtual {v3, v13}, Landroid/view/View;->setX(F)V

    .line 667
    invoke-virtual {v3, v14}, Landroid/view/View;->setY(F)V

    .line 652
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_22

    .line 648
    .end local v1    # "alpha":F
    .end local v2    # "distanceScale":F
    .end local v3    # "hex":Landroid/widget/ImageView;
    .end local v4    # "i":I
    .end local v10    # "scale":F
    .end local v13    # "tx":F
    .end local v14    # "ty":F
    :cond_af
    const/high16 v15, 0x3f800000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v16, v0

    const/high16 v17, 0x3f000000

    sub-float v16, v16, v17

    const/high16 v17, 0x40000000

    mul-float v16, v16, v17

    sub-float v1, v15, v16

    goto/16 :goto_c

    .line 671
    .restart local v1    # "alpha":F
    .restart local v2    # "distanceScale":F
    .restart local v4    # "i":I
    :cond_c3
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    const v16, 0x3fe66666

    mul-float v11, v15, v16

    .line 672
    .local v11, "tapAniamationParticleValue":F
    const/high16 v15, 0x3f000000

    cmpg-float v15, v11, v15

    if-gez v15, :cond_1a1

    const/high16 v15, 0x3f800000

    :goto_d4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v7

    .line 673
    .local v7, "prticleAalpha":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    const v16, 0x3f99999a

    mul-float v6, v15, v16

    .line 674
    .local v6, "particleScale":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 675
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v6

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleX(F)V

    .line 676
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v6

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleY(F)V

    .line 679
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    const v16, 0x3fb33333

    mul-float v12, v15, v16

    .line 680
    .local v12, "tapAniamationRingValue":F
    const/high16 v15, 0x3f000000

    cmpg-float v15, v12, v15

    if-gez v15, :cond_1af

    const/high16 v15, 0x3f800000

    :goto_11b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->getCorrectAlpha(F)F

    move-result v8

    .line 681
    .local v8, "ringAlpha":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 682
    const/high16 v15, 0x3f000000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v16, v0

    add-float v9, v15, v16

    .line 683
    .local v9, "ringScale":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleX(F)V

    .line 684
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v9

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleY(F)V

    .line 687
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v8}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 688
    const/high16 v15, 0x3fc00000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000

    mul-float v16, v16, v17

    add-float v5, v15, v16

    .line 689
    .local v5, "longScale":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleX(F)V

    .line 690
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    move/from16 v16, v0

    mul-float v16, v16, v5

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setScaleY(F)V

    .line 691
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    move/from16 v16, v0

    const/high16 v17, 0x41f00000

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimationValue:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    add-float v16, v16, v17

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setRotation(F)V

    .line 692
    return-void

    .line 672
    .end local v5    # "longScale":F
    .end local v6    # "particleScale":F
    .end local v7    # "prticleAalpha":F
    .end local v8    # "ringAlpha":F
    .end local v9    # "ringScale":F
    .end local v12    # "tapAniamationRingValue":F
    :cond_1a1
    const/high16 v15, 0x3f800000

    const/high16 v16, 0x3f000000

    sub-float v16, v11, v16

    const/high16 v17, 0x40000000

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    goto/16 :goto_d4

    .line 680
    .restart local v6    # "particleScale":F
    .restart local v7    # "prticleAalpha":F
    .restart local v12    # "tapAniamationRingValue":F
    :cond_1af
    const/high16 v15, 0x3f800000

    const/high16 v16, 0x3f000000

    sub-float v16, v12, v16

    const/high16 v17, 0x40000000

    mul-float v16, v16, v17

    sub-float v15, v15, v16

    goto/16 :goto_11b
.end method

.method private animatedUnlock()V
    .registers 10

    .prologue
    const/high16 v4, 0x40000000

    const/high16 v3, 0x3f800000

    const/high16 v2, 0x3f000000

    .line 737
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimationValue:F

    const v1, 0x3fa66666

    mul-float/2addr v0, v1

    add-float v8, v3, v0

    .line 738
    .local v8, "rainbowScale":F
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimationValue:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3f

    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimationValue:F

    mul-float v7, v0, v4

    .line 740
    .local v7, "rainbowAlpha":F
    :goto_18
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v0, v7}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 741
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    const v6, 0x3ecccccd

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 742
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 743
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v8

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 744
    return-void

    .line 738
    .end local v7    # "rainbowAlpha":F
    :cond_3f
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimationValue:F

    sub-float/2addr v0, v2

    mul-float/2addr v0, v4

    sub-float v7, v3, v0

    goto :goto_18
.end method

.method private calculateDistance(FF)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const-wide/high16 v6, 0x4000000000000000L

    .line 761
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    sub-float v0, p1, v2

    .line 762
    .local v0, "diffX":F
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    sub-float v1, p2, v2

    .line 763
    .local v1, "diffY":F
    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distance:D

    .line 764
    iget-wide v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distance:D

    double-to-float v2, v2

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    .line 765
    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 849
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 850
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 851
    :cond_b
    return-void
.end method

.method private cleanUpAllViews()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 822
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 823
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 824
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 825
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 826
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 827
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 829
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v1, v2, :cond_2e

    .line 830
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v0, v2, v1

    .line 831
    .local v0, "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    invoke-direct {p0, v0, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 829
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 833
    .end local v0    # "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    if-ge v1, v2, :cond_3d

    .line 834
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v0, v2, v1

    .line 835
    .restart local v0    # "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    invoke-direct {p0, v0, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 833
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 838
    .end local v0    # "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    :cond_3d
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 839
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 840
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 841
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 842
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 843
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 844
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 845
    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 846
    return-void
.end method

.method private getCorrectAlpha(F)F
    .registers 5
    .param p1, "alpha"    # F

    .prologue
    const/high16 v1, 0x3f800000

    const/4 v0, 0x0

    .line 752
    cmpg-float v2, p1, v0

    if-gtz v2, :cond_9

    move p1, v0

    .line 757
    .end local p1    # "alpha":F
    :cond_8
    :goto_8
    return p1

    .line 754
    .restart local p1    # "alpha":F
    :cond_9
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_8

    move p1, v1

    .line 755
    goto :goto_8
.end method

.method private hoverEnter(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 615
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverX:F

    .line 616
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverY:F

    .line 618
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 619
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 620
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 621
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 622
    return-void
.end method

.method private hoverExit()V
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 632
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 633
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 634
    return-void
.end method

.method private hoverMove(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 625
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverX:F

    .line 626
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverY:F

    .line 627
    return-void
.end method

.method private lensFlareinit()V
    .registers 8

    .prologue
    .line 176
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_12b

    .line 178
    const-string v4, "LensFlare"

    const-string v5, "this.getChildCount() == 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 180
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenWidth:I

    .line 181
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenHeight:I

    .line 183
    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenWidth:I

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenHeight:I

    if-ge v4, v5, :cond_132

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenWidth:I

    .line 185
    .local v3, "smallestWidth":I
    :goto_25
    const-string v4, "LensFlare"

    const-string v5, "lensFlareinit ============================"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screenHeight : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smallestWidth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v1, "0.8"

    .line 192
    .local v1, "opacity":Ljava/lang/String;
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GLOBALCONFIG_LOCKSCREEN_LIGHT_OPACITY : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->globalAlpha:F

    .line 195
    const/16 v4, 0x438

    if-eq v3, v4, :cond_ce

    .line 196
    int-to-float v4, v3

    const/high16 v5, 0x44870000

    div-float v2, v4, v5

    .line 197
    .local v2, "ratio":F
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ratio : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    .line 199
    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    .line 200
    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-int v4, v4

    iput v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    .line 203
    .end local v2    # "ratio":F
    :cond_ce
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Y_OFFSET : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MAX_ALPHA_DISTANCE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->MAX_ALPHA_DISTANCE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v4, "LensFlare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TAP_AREA_RADIUS : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setLayout()V

    .line 208
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setHover()V

    .line 209
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setHexagon()V

    .line 210
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setTapHexagon()V

    .line 211
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAnimator()V

    .line 213
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v1    # "opacity":Ljava/lang/String;
    .end local v3    # "smallestWidth":I
    :cond_12b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    .line 214
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 215
    return-void

    .line 183
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_132
    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->screenHeight:I

    goto/16 :goto_25
.end method

.method private playSound(I)V
    .registers 9
    .param p1, "soundId"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f800000

    .line 543
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSoundEnable:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSystemSoundChecked:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    if-eqz v0, :cond_18

    .line 544
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 546
    :cond_18
    return-void
.end method

.method private playUnlockAffordance()V
    .registers 8

    .prologue
    const/high16 v6, 0x3f800000

    .line 874
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_7

    .line 890
    :goto_6
    return-void

    .line 876
    :cond_7
    const-string v0, "LensFlare"

    const-string v1, "playUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    .line 878
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    .line 880
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setHexagonRandomTarget(Z)V

    .line 882
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 883
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 884
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 885
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 887
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 888
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 889
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_6
.end method

.method private setAlphaAndVisibility(Landroid/view/View;F)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "alpha"    # F

    .prologue
    const/16 v0, 0x8

    .line 810
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_18

    .line 811
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_17

    .line 812
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_14

    const/4 v0, 0x4

    :cond_14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 819
    :cond_17
    :goto_17
    return-void

    .line 815
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_22

    .line 816
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 817
    :cond_22
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_17
.end method

.method private setAnimator()V
    .registers 8

    .prologue
    const-wide/16 v5, 0x1f4

    const/4 v4, 0x2

    .line 430
    new-array v0, v4, [F

    fill-array-data v0, :array_188

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    .line 431
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 432
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1770

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 433
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$1;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$1;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 441
    new-array v0, v4, [F

    fill-array-data v0, :array_190

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    .line 442
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 443
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 444
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$2;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$2;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 452
    new-array v0, v4, [F

    fill-array-data v0, :array_198

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    .line 453
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 454
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 455
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$3;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$3;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 463
    new-array v0, v4, [F

    fill-array-data v0, :array_1a0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 464
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 466
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$4;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$4;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 474
    new-array v0, v4, [F

    fill-array-data v0, :array_1a8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    .line 475
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 477
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$5;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$5;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 485
    new-array v0, v4, [F

    fill-array-data v0, :array_1b0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    .line 486
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 487
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 489
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$6;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$6;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 496
    new-array v0, v4, [F

    fill-array-data v0, :array_1b8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    .line 497
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;

    sget-object v2, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;->OUT:Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;

    const/high16 v3, 0x41000000

    invoke-direct {v1, p0, v2, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$BackInterpolator;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$EasingType;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 499
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$7;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$7;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 506
    new-array v0, v4, [F

    fill-array-data v0, :array_1c0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    .line 507
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$QuintEaseOut;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 508
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 509
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLightOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$8;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$8;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 517
    new-array v0, v4, [F

    fill-array-data v0, :array_1c8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    .line 518
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 519
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 520
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$9;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 531
    new-array v0, v4, [F

    fill-array-data v0, :array_1d0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    .line 532
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 533
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x44c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 534
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$10;

    invoke-direct {v1, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$10;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 540
    return-void

    .line 430
    :array_188
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 441
    :array_190
    .array-data 4
        0x0
        0x3f19999a
    .end array-data

    .line 452
    :array_198
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 463
    :array_1a0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 474
    :array_1a8
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 485
    :array_1b0
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 496
    :array_1b8
    .array-data 4
        0x0
        0x3f800000
    .end array-data

    .line 506
    :array_1c0
    .array-data 4
        0x3f800000
        0x0
    .end array-data

    .line 517
    :array_1c8
    .array-data 4
        0x0
        0x3f19999a
    .end array-data

    .line 531
    :array_1d0
    .array-data 4
        0x3f19999a
        0x0
    .end array-data
.end method

.method private setCenterPos(Landroid/view/View;FFFFF)V
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromX"    # F
    .param p3, "fromY"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "distanceScale"    # F

    .prologue
    const/high16 v3, 0x40000000

    .line 769
    sub-float v2, p4, p2

    mul-float/2addr v2, p6

    add-float v0, v2, p2

    .line 770
    .local v0, "tx":F
    sub-float v2, p5, p3

    mul-float/2addr v2, p6

    add-float v1, v2, p3

    .line 772
    .local v1, "ty":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 773
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 775
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_26

    .line 776
    invoke-virtual {p1, v0}, Landroid/view/View;->setX(F)V

    .line 777
    invoke-virtual {p1, v1}, Landroid/view/View;->setY(F)V

    .line 779
    :cond_26
    return-void
.end method

.method private setCenterPos(Landroid/view/View;FFFFFFI)V
    .registers 27
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromX"    # F
    .param p3, "fromY"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "distanceScale"    # F
    .param p7, "scale"    # F
    .param p8, "rotation"    # I

    .prologue
    .line 783
    const/high16 v12, 0x3f000000

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distance:D

    double-to-float v13, v13

    const/high16 v14, 0x44340000

    div-float/2addr v13, v14

    const/high16 v14, 0x3f000000

    mul-float/2addr v13, v14

    add-float v8, v12, v13

    .line 784
    .local v8, "scaleByDistance":F
    const/high16 v12, 0x3f000000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimationValue:F

    const/high16 v14, 0x3f000000

    mul-float/2addr v13, v14

    add-float v7, v12, v13

    .line 785
    .local v7, "scaleByAnimationValue":F
    mul-float v12, p7, v8

    mul-float v9, v12, v7

    .line 786
    .local v9, "tscale":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v12, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleX(F)V

    .line 787
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v12, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/View;->setScaleY(F)V

    .line 789
    const/high16 v12, 0x3f000000

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimationValue:F

    const/high16 v14, 0x3f000000

    mul-float/2addr v13, v14

    add-float v2, v12, v13

    .line 790
    .local v2, "distanceScaleByAnimation":F
    sub-float v12, p4, p2

    mul-float v12, v12, p6

    mul-float/2addr v12, v2

    add-float v10, v12, p2

    .line 791
    .local v10, "tx":F
    sub-float v12, p5, p3

    mul-float v12, v12, p6

    mul-float/2addr v12, v2

    add-float v11, v12, p3

    .line 793
    .local v11, "ty":F
    if-eqz p8, :cond_9c

    .line 794
    const/high16 v12, 0x43960000

    mul-float v1, p7, v12

    .line 795
    .local v1, "dist":F
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distance:D

    double-to-float v12, v12

    const/high16 v13, 0x447a0000

    div-float/2addr v12, v13

    mul-float v12, v12, p7

    mul-float v6, v12, p7

    .line 796
    .local v6, "rotationByDistance":F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimationValue:F

    const/high16 v13, 0x3f800000

    mul-float v5, v12, v13

    .line 797
    .local v5, "rotationByAnimation":F
    move/from16 v0, p8

    int-to-double v12, v0

    const-wide v14, 0x400921fb54442d18L

    mul-double/2addr v12, v14

    const-wide v14, 0x4066800000000000L

    div-double/2addr v12, v14

    float-to-double v14, v6

    add-double/2addr v12, v14

    float-to-double v14, v5

    add-double v3, v12, v14

    .line 798
    .local v3, "rad":D
    float-to-double v12, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    float-to-double v14, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-float v10, v12, p4

    .line 799
    float-to-double v12, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    neg-double v14, v14

    mul-double/2addr v12, v14

    float-to-double v14, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    add-float v11, v12, p5

    .line 802
    .end local v1    # "dist":F
    .end local v3    # "rad":D
    .end local v5    # "rotationByAnimation":F
    .end local v6    # "rotationByDistance":F
    :cond_9c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    sub-float/2addr v10, v12

    .line 803
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    .line 805
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->setX(F)V

    .line 806
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/View;->setY(F)V

    .line 807
    return-void
.end method

.method private setHexagon()V
    .registers 9

    .prologue
    const/4 v7, -0x2

    .line 293
    const/4 v3, 0x6

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_blue_id:I

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_orange_id:I

    aput v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_blue_id:I

    aput v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_orange_id:I

    aput v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_green_id:I

    aput v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_green_id:I

    aput v5, v3, v4

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRes:[I

    .line 300
    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRes:[I

    array-length v3, v3

    iput v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    .line 302
    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    new-array v3, v3, [Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    .line 303
    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRotation:[I

    .line 304
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    .line 305
    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    .line 307
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_43
    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v1, v3, :cond_71

    .line 308
    new-instance v0, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRes:[I

    aget v3, v3, v1

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 310
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4034000000000000L

    mul-double/2addr v3, v5

    double-to-float v2, v3

    .line 311
    .local v2, "rotation":F
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 312
    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 313
    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightObj:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v0, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 314
    iget-object v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aput-object v0, v3, v1

    .line 307
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 316
    .end local v0    # "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    .end local v2    # "rotation":F
    :cond_71
    return-void
.end method

.method private setHexagonRandomTarget(Z)V
    .registers 19
    .param p1, "isForUnlockAffordance"    # Z

    .prologue
    .line 345
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    new-array v11, v11, [Landroid/graphics/Point;

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexRandomPoint:[Landroid/graphics/Point;

    .line 346
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    new-array v11, v11, [F

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagonScale:[F

    .line 347
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4076800000000000L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    .line 350
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    if-ge v4, v11, :cond_98

    .line 351
    if-eqz p1, :cond_3d

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    const-wide v13, 0x4076800000000000L

    mul-double/2addr v11, v13

    double-to-int v11, v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    .line 352
    :cond_3d
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->TAP_AREA_RADIUS:I

    int-to-double v13, v13

    mul-double/2addr v11, v13

    double-to-int v7, v11

    .line 353
    .local v7, "randomDistance":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    invoke-static {v11}, Landroid/util/FloatMath;->cos(F)F

    move-result v11

    int-to-float v12, v7

    mul-float/2addr v11, v12

    float-to-int v9, v11

    .line 354
    .local v9, "tx":I
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    invoke-static {v11}, Landroid/util/FloatMath;->sin(F)F

    move-result v11

    int-to-float v12, v7

    mul-float/2addr v11, v12

    float-to-int v10, v11

    .line 356
    .local v10, "ty":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexRandomPoint:[Landroid/graphics/Point;

    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    aput-object v12, v11, v4

    .line 357
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagonScale:[F

    const v12, 0x3e4ccccd

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide v15, 0x3fe99999a0000000L

    mul-double/2addr v13, v15

    double-to-float v13, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    .line 358
    const/high16 v11, 0x3f000000

    const/high16 v12, 0x3f000000

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    double-to-float v13, v13

    mul-float/2addr v12, v13

    add-float v1, v11, v12

    .line 359
    .local v1, "alpha":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v11, v11, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 350
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 363
    .end local v1    # "alpha":F
    .end local v7    # "randomDistance":I
    .end local v9    # "tx":I
    .end local v10    # "ty":I
    :cond_98
    if-nez p1, :cond_162

    .line 364
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    if-eqz v11, :cond_a7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 365
    :cond_a7
    const v8, 0x3e4ccccd

    .line 366
    .local v8, "startDistance":F
    const v2, 0x3e75c28f

    .line 367
    .local v2, "distanceGap":F
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_ae
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v5, v11, :cond_d9

    .line 368
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    double-to-float v11, v11

    const/high16 v12, 0x3f000000

    sub-float/2addr v11, v12

    const v12, 0x3ecccccd

    mul-float v6, v11, v12

    .line 369
    .local v6, "random":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    if-eqz v11, :cond_d6

    .line 370
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    int-to-float v12, v5

    mul-float/2addr v12, v2

    add-float/2addr v12, v8

    add-float/2addr v12, v6

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_d6
    add-int/lit8 v5, v5, 0x1

    goto :goto_ae

    .line 372
    .end local v6    # "random":F
    :cond_d9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 374
    const/4 v4, 0x0

    :goto_e1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    if-ge v4, v11, :cond_157

    .line 375
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aget-object v3, v11, v4

    .line 376
    .local v3, "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TOTAL:I

    add-int/lit8 v11, v11, 0x0

    if-ge v4, v11, :cond_133

    .line 377
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRotation:[I

    const/4 v12, 0x0

    aput v12, v11, v4

    .line 378
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonDistance:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    const v13, 0x3dcccccd

    add-float/2addr v11, v13

    aput v11, v12, v4

    .line 383
    :goto_114
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    aget v11, v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v11, v12

    invoke-virtual {v3, v11}, Landroid/view/View;->setScaleX(F)V

    .line 384
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    aget v11, v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v11, v12

    invoke-virtual {v3, v11}, Landroid/view/View;->setScaleY(F)V

    .line 374
    add-int/lit8 v4, v4, 0x1

    goto :goto_e1

    .line 380
    :cond_133
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonRotation:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v12

    const-wide v14, 0x4076800000000000L

    mul-double/2addr v12, v14

    double-to-int v12, v12

    aput v12, v11, v4

    .line 381
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagonScale:[F

    const v12, 0x3f19999a

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    const-wide/high16 v15, 0x3ff0000000000000L

    mul-double/2addr v13, v15

    double-to-float v13, v13

    add-float/2addr v12, v13

    aput v12, v11, v4

    goto :goto_114

    .line 386
    .end local v3    # "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    :cond_157
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->randomRotation:F

    invoke-virtual {v11, v12}, Landroid/view/View;->setRotation(F)V

    .line 388
    .end local v2    # "distanceGap":F
    .end local v5    # "j":I
    .end local v8    # "startDistance":F
    :cond_162
    return-void
.end method

.method private setHover()V
    .registers 6

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 285
    new-instance v0, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    .line 286
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverlight_id:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 287
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 288
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverLight1:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v0, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 290
    return-void
.end method

.method private setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V
    .registers 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "resId"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 268
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 269
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    if-nez p3, :cond_21

    .line 270
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 279
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 280
    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 281
    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->defaultInSampleSize:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 282
    return-void

    .line 272
    :cond_21
    iput-object p3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_b
.end method

.method private setLayout()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 220
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    .line 221
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 222
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 223
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting_id:I

    invoke-static {v2, v3, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 226
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 229
    new-instance v1, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    .line 230
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->light_id:I

    invoke-direct {p0, v1, v2, v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 231
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 235
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightObj:Landroid/widget/FrameLayout;

    .line 236
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightObj:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 239
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightTap:Landroid/widget/FrameLayout;

    .line 240
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightTap:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    new-instance v1, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    .line 244
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring_id:I

    invoke-direct {p0, v1, v2, v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 245
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 246
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 249
    new-instance v1, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    .line 250
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->long_light_id:I

    invoke-direct {p0, v1, v2, v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 251
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 252
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 255
    new-instance v1, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    .line 256
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle_id:I

    invoke-direct {p0, v1, v2, v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 257
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 258
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 261
    new-instance v1, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    .line 262
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow_id:I

    invoke-direct {p0, v1, v2, v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 263
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {p0, v1, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 264
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-direct {p0, v1, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 265
    return-void
.end method

.method private setSound()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 391
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->stopReleaseSound()V

    .line 394
    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 396
    .local v2, "cr":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 398
    .local v4, "result":I
    :try_start_c
    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_11
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_c .. :try_end_11} :catch_98

    move-result v4

    .line 402
    :goto_12
    if-ne v4, v6, :cond_9e

    move v5, v6

    :goto_15
    iput-boolean v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isSystemSoundChecked:Z

    .line 404
    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    if-nez v5, :cond_97

    .line 405
    new-instance v5, Landroid/media/SoundPool;

    const/16 v8, 0xa

    invoke-direct {v5, v8, v6, v7}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    .line 408
    new-instance v0, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/lens_flare_tap.ogg"

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    .local v0, "checkTapFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v5, "/system/media/audio/ui/lens_flare_unlock.ogg"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 412
    .local v1, "checkUnlockFile":Ljava/io/File;
    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/lens_flare_tap.ogg"

    invoke-virtual {v5, v7, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_tap:I

    .line 413
    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    const-string v7, "/system/media/audio/ui/lens_flare_unlock.ogg"

    invoke-virtual {v5, v7, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_unlock:I

    .line 414
    const-string v5, "LensFlare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sound ID get from path sound_tap = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_tap:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", sound_unlock = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_unlock:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_7e

    .line 417
    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tap_sound_id:I

    invoke-virtual {v5, v7, v8, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_tap:I

    .line 420
    :cond_7e
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_90

    .line 421
    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->soundpool:Landroid/media/SoundPool;

    iget-object v7, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlock_sound_id:I

    invoke-virtual {v5, v7, v8, v6}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_unlock:I

    .line 424
    :cond_90
    const-string v5, "LensFlare"

    const-string v6, "LensFlare sound : load"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    .end local v0    # "checkTapFile":Ljava/io/File;
    .end local v1    # "checkUnlockFile":Ljava/io/File;
    :cond_97
    return-void

    .line 399
    :catch_98
    move-exception v3

    .line 400
    .local v3, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_12

    .end local v3    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_9e
    move v5, v7

    .line 402
    goto/16 :goto_15
.end method

.method private setTapHexagon()V
    .registers 11

    .prologue
    const/4 v9, -0x2

    .line 319
    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    new-array v5, v5, [Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iput-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    .line 320
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->HEXAGON_TAP_TOTAL:I

    if-ge v1, v5, :cond_45

    .line 321
    rem-int/lit8 v2, v1, 0x3

    .line 322
    .local v2, "index":I
    const/4 v4, 0x0

    .line 323
    .local v4, "resource":I
    packed-switch v2, :pswitch_data_46

    .line 334
    :goto_12
    new-instance v0, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;-><init>(Landroid/content/Context;)V

    .line 335
    .local v0, "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setImageWithOption(Landroid/widget/ImageView;ILandroid/graphics/Bitmap$Config;)V

    .line 336
    const/4 v5, 0x0

    invoke-direct {p0, v0, v5}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    .line 337
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x4076800000000000L

    mul-double/2addr v5, v7

    double-to-int v3, v5

    .line 338
    .local v3, "randomRotation":I
    int-to-float v5, v3

    invoke-virtual {v0, v5}, Landroid/view/View;->setRotation(F)V

    .line 339
    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightTap:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v0, v9, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 340
    iget-object v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapHexagon:[Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    aput-object v0, v5, v1

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 325
    .end local v0    # "hex":Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;
    .end local v3    # "randomRotation":I
    :pswitch_3c
    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_blue_id:I

    .line 326
    goto :goto_12

    .line 328
    :pswitch_3f
    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_orange_id:I

    .line 329
    goto :goto_12

    .line 331
    :pswitch_42
    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_green_id:I

    goto :goto_12

    .line 342
    .end local v2    # "index":I
    .end local v4    # "resource":I
    :cond_45
    return-void

    .line 323
    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_3f
        :pswitch_42
    .end packed-switch
.end method

.method private stopReleaseSound()V
    .registers 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    .line 983
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 986
    :cond_c
    return-void
.end method

.method private stopUnlockAffordance()V
    .registers 3

    .prologue
    .line 893
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_13

    .line 894
    const-string v0, "LensFlare"

    const-string v1, "remove delayed UnlockAffordance callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    .line 898
    :cond_13
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .registers 4

    .prologue
    .line 961
    const-string v0, "LensFlare"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_c

    .line 979
    :goto_b
    return-void

    .line 963
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cleanUpAllViews()V

    .line 964
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    .line 966
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->stopReleaseSound()V

    .line 967
    new-instance v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$13;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$13;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    .line 978
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->releaseSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b
.end method

.method public getUnlockDelay()J
    .registers 3

    .prologue
    .line 1003
    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 1008
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_d

    .line 1010
    const-string v0, "LensFlare"

    const-string v1, "Return handleTouchEvent!!! Becuase isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :goto_c
    return v3

    .line 1014
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_68

    :pswitch_14
    goto :goto_c

    .line 1032
    :pswitch_15
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverExit()V

    goto :goto_c

    .line 1016
    :pswitch_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x4002

    const/16 v1, 0x4002

    if-eq v0, v1, :cond_2d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x2002

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_57

    .line 1018
    :cond_2d
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->PEN_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    .line 1022
    :goto_31
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDevice.SOURCE_STYLUS = 16386, Y_OFFSET = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverEnter(FF)V

    goto :goto_c

    .line 1020
    :cond_57
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FINGER_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    goto :goto_31

    .line 1027
    :pswitch_5c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverMove(FF)V

    goto :goto_c

    .line 1014
    :pswitch_data_68
    .packed-switch 0x3
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_5c
        :pswitch_14
        :pswitch_19
        :pswitch_15
    .end packed-switch
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 902
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_d

    .line 904
    const-string v0, "LensFlare"

    const-string v1, "Return handleTouchEvent!!! Becuase isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    :cond_c
    :goto_c
    return v3

    .line 908
    :cond_d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_56

    .line 909
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x4002

    const/16 v1, 0x4002

    if-eq v0, v1, :cond_27

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit16 v0, v0, 0x2002

    const/16 v1, 0x2002

    if-ne v0, v1, :cond_51

    .line 911
    :cond_27
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->PEN_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    .line 915
    :goto_2b
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDevice.SOURCE_STYLUS = 16386, Y_OFFSET = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->show(FF)V

    goto :goto_c

    .line 913
    :cond_51
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->FINGER_HOVER_Y_OFFSET:I

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    goto :goto_2b

    .line 917
    :cond_56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6f

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_6f

    .line 919
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->move(FF)V

    goto :goto_c

    .line 920
    :cond_6f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_7c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_c

    .line 922
    :cond_7c
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hide()V

    goto :goto_c
.end method

.method public handleTouchEventForPatternLock(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1039
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 928
    const-string v0, "LensFlare"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    invoke-virtual {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlock()V

    .line 930
    return-void
.end method

.method public hide()V
    .registers 2

    .prologue
    .line 597
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    .line 598
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 599
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 600
    return-void
.end method

.method public move(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    if-nez v0, :cond_8

    .line 583
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->show(FF)V

    .line 594
    :cond_7
    :goto_7
    return-void

    .line 585
    :cond_8
    const/4 v0, 0x0

    add-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    .line 586
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    .line 587
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    invoke-direct {p0, v0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->calculateDistance(FF)V

    .line 589
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_24

    .line 590
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedDragAlpha()V

    .line 591
    :cond_24
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    .line 592
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedDragPos()V

    goto :goto_7
.end method

.method public playLockSound()V
    .registers 3

    .prologue
    .line 933
    const-string v0, "LensFlare"

    const-string v1, "playSound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_unlock:I

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->playSound(I)V

    .line 935
    return-void
.end method

.method public reset()V
    .registers 3

    .prologue
    .line 989
    const-string v0, "LensFlare"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_c

    .line 995
    :goto_b
    return-void

    .line 992
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cleanUpAllViews()V

    .line 993
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    .line 994
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->stopUnlockAffordance()V

    goto :goto_b
.end method

.method public screenTurnedOff()V
    .registers 1

    .prologue
    .line 1112
    return-void
.end method

.method public screenTurnedOn()V
    .registers 3

    .prologue
    .line 998
    const-string v0, "LensFlare"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    .line 1000
    return-void
.end method

.method public setImageResourceId(IIIIIIIIII)V
    .registers 11
    .param p1, "hexagon_blue"    # I
    .param p2, "hexagon_green"    # I
    .param p3, "hexagon_orange"    # I
    .param p4, "hoverlight"    # I
    .param p5, "light"    # I
    .param p6, "long_light"    # I
    .param p7, "particle"    # I
    .param p8, "rainbow"    # I
    .param p9, "ring"    # I
    .param p10, "vignetting"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_blue_id:I

    .line 158
    iput p2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_green_id:I

    .line 159
    iput p3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hexagon_orange_id:I

    .line 160
    iput p4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->hoverlight_id:I

    .line 161
    iput p5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->light_id:I

    .line 162
    iput p6, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->long_light_id:I

    .line 163
    iput p7, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle_id:I

    .line 164
    iput p8, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow_id:I

    .line 165
    iput p9, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring_id:I

    .line 166
    iput p10, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->vignetting_id:I

    .line 167
    return-void
.end method

.method public setSoundResourceId(II)V
    .registers 3
    .param p1, "tapSound"    # I
    .param p2, "unlockSound"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tap_sound_id:I

    .line 171
    iput p2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlock_sound_id:I

    .line 172
    return-void
.end method

.method public show()V
    .registers 5

    .prologue
    .line 938
    const-string v0, "LensFlare"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    .line 941
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v0, :cond_41

    .line 943
    const-string v0, "LensFlare"

    const-string v1, "isBeforeInit is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_41

    .line 946
    new-instance v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$12;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$12;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    .line 953
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.postDelayed, createdDelaytime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->createdDelaytime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->mFirstCreatedRunnable:Ljava/lang/Runnable;

    iget-wide v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->createdDelaytime:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 957
    :cond_41
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setSound()V

    .line 958
    return-void
.end method

.method public show(FF)V
    .registers 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x3f800000

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isTouched:Z

    .line 550
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->stopUnlockAffordance()V

    .line 552
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distance:D

    .line 553
    iput v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->distancePerMaxAlpha:F

    .line 554
    add-float v0, p1, v2

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    .line 555
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->Y_OFFSET:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    .line 556
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    .line 557
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iput v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    .line 558
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setHexagonRandomTarget(Z)V

    .line 560
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->animatedDragPos()V

    .line 562
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lightFog:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 563
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->ring:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 564
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->longLight:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 565
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->particle:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    iget v5, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->setCenterPos(Landroid/view/View;FFFFF)V

    .line 567
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 568
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 569
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 570
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 571
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOnAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 572
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceOffAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->cancelAnimator(Landroid/animation/Animator;)V

    .line 574
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->objAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 575
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->fogOnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 576
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->tapAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 578
    iget v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_tap:I

    invoke-direct {p0, v0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->playSound(I)V

    .line 579
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .registers 8
    .param p1, "startDelay"    # J
    .param p3, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 854
    const-string v0, "LensFlare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isPlayAffordance:Z

    if-eqz v0, :cond_77

    .line 857
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->stopUnlockAffordance()V

    .line 858
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p3, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 859
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordancePoint:Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Rect;->top:I

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 861
    new-instance v0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$11;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect$11;-><init>(Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    .line 869
    iget-object v0, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->affordanceRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 871
    :cond_77
    return-void
.end method

.method public unlock()V
    .registers 6

    .prologue
    .line 603
    iget-boolean v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->isBeforeInit:Z

    if-eqz v1, :cond_f

    .line 604
    const-string v1, "LensFlare"

    const-string v2, "unlock before init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-direct {p0}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->lensFlareinit()V

    .line 612
    :goto_e
    return-void

    .line 607
    :cond_f
    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->sound_unlock:I

    invoke-direct {p0, v1}, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->playSound(I)V

    .line 608
    iget v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentY:F

    iget v2, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartY:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget v3, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->currentX:F

    iget v4, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->showStartX:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v3, 0x4066800000000000L

    mul-double/2addr v1, v3

    const-wide v3, 0x400921fb54442d18L

    div-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x42200000

    sub-float v0, v1, v2

    .line 609
    .local v0, "degree":F
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->rainbow:Lcom/sec/android/visualeffect/lensflare/ImageViewBlended;

    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    .line 610
    iget-object v1, p0, Lcom/sec/android/visualeffect/lensflare/LensFlareEffect;->unlockAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_e
.end method

.method public update()V
    .registers 1

    .prologue
    .line 1109
    return-void
.end method
