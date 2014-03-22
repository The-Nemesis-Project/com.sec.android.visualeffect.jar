.class public Lcom/sec/android/visualeffect/particlespace/particle/Particle;
.super Ljava/lang/Object;
.source "Particle.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private bigRadius:I

.field private dotAlpha:I

.field private dx:F

.field private dy:F

.field private gravity:F

.field private isAlive:Z

.field private life:I

.field private maxSpeed:I

.field private paint:Landroid/graphics/Paint;

.field private rad:I

.field private smallRadius:I

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(FFI)V
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "color"    # I

    .prologue
    const/4 v2, 0x1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v1, "ParticleEffect"

    iput-object v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->TAG:Ljava/lang/String;

    .line 14
    const/high16 v1, 0x40800000

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->gravity:F

    .line 16
    const/4 v1, 0x7

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:I

    .line 17
    const/16 v1, 0xf

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->smallRadius:I

    .line 18
    const/16 v1, 0x34

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->bigRadius:I

    .line 20
    const/16 v1, 0xc8

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dotAlpha:I

    .line 28
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->paint:Landroid/graphics/Paint;

    .line 29
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 32
    .local v0, "rnd":Ljava/util/Random;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    .line 33
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iput-boolean v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isAlive:Z

    .line 36
    iput p1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->x:F

    .line 37
    iput p2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->y:F

    .line 38
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_79

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->bigRadius:I

    int-to-double v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    :goto_51
    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->rad:I

    .line 40
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:I

    int-to-double v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:I

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dx:F

    .line 41
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:I

    int-to-double v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->maxSpeed:I

    div-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    sub-double/2addr v1, v3

    double-to-float v1, v1

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->gravity:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dy:F

    .line 42
    return-void

    .line 38
    :cond_79
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->smallRadius:I

    int-to-double v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-int v1, v1

    goto :goto_51
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 56
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_26

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dotAlpha:I

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    mul-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x1e

    .line 57
    .local v0, "alpha":I
    :goto_d
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->x:F

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->y:F

    iget v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->rad:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 59
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    if-gtz v1, :cond_29

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isAlive:Z

    .line 64
    :goto_25
    return-void

    .line 56
    .end local v0    # "alpha":I
    :cond_26
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dotAlpha:I

    goto :goto_d

    .line 62
    .restart local v0    # "alpha":I
    :cond_29
    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    goto :goto_25
.end method

.method public isAlive()Z
    .registers 2

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isAlive:Z

    return v0
.end method

.method public move()V
    .registers 3

    .prologue
    .line 45
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->x:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dx:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->x:F

    .line 46
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->y:F

    iget v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dy:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->y:F

    .line 47
    return-void
.end method

.method public unlock(F)V
    .registers 3
    .param p1, "speed"    # F

    .prologue
    .line 50
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dx:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dx:F

    .line 51
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dy:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->dy:F

    .line 52
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->life:I

    .line 53
    return-void
.end method
