.class public Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;
.super Landroid/view/View;
.source "ParticleEffect.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private dotMaxLimit:I

.field private dotUnlockSpeed:I

.field private drawingDelayTime:I

.field private isDrawing:Z

.field mHandler:Landroid/os/Handler;

.field private particleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/visualeffect/particlespace/particle/Particle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    const-string v0, "ParticleEffect"

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->TAG:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleList:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingDelayTime:I

    .line 19
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->dotMaxLimit:I

    .line 20
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->dotUnlockSpeed:I

    .line 81
    new-instance v0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;

    invoke-direct {v0, p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect$1;-><init>(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)V

    iput-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->mHandler:Landroid/os/Handler;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)Z
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isDrawing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;)I
    .registers 2
    .param p0, "x0"    # Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;

    .prologue
    .line 13
    iget v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingDelayTime:I

    return v0
.end method

.method private startDrawing()V
    .registers 5

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isDrawing:Z

    if-eqz v0, :cond_5

    .line 46
    :goto_4
    return-void

    .line 43
    :cond_5
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->TAG:Ljava/lang/String;

    const-string v1, "start drawing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isDrawing:Z

    .line 45
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->drawingDelayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4
.end method

.method private stopDrawing()V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->TAG:Ljava/lang/String;

    const-string v1, "stop drawing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->isDrawing:Z

    .line 51
    return-void
.end method


# virtual methods
.method public addDots(IFFI)V
    .registers 17
    .param p1, "amount"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "color"    # I

    .prologue
    .line 28
    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->dotMaxLimit:I

    if-le v3, v4, :cond_b

    .line 39
    :goto_a
    return-void

    .line 30
    :cond_b
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, p1, :cond_5a

    .line 31
    const/4 v3, 0x3

    new-array v1, v3, [F

    .line 32
    .local v1, "hsv":[F
    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static/range {p4 .. p4}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v3, v4, v5, v1}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 33
    const/4 v3, 0x1

    aget v4, v1, v3

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L

    const-wide v8, 0x3fe6666666666666L

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v1, v3

    .line 34
    const/4 v3, 0x2

    aget v4, v1, v3

    float-to-double v4, v4

    const/high16 v6, 0x3f800000

    const/4 v7, 0x2

    aget v7, v1, v7

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    aput v4, v1, v3

    .line 35
    new-instance v0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    invoke-direct {v0, p2, p3, v3}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;-><init>(FFI)V

    .line 36
    .local v0, "dot":Lcom/sec/android/visualeffect/particlespace/particle/Particle;
    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 38
    .end local v0    # "dot":Lcom/sec/android/visualeffect/particlespace/particle/Particle;
    .end local v1    # "hsv":[F
    :cond_5a
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->startDrawing()V

    goto :goto_a
.end method

.method public clearEffect()V
    .registers 1

    .prologue
    .line 89
    return-void
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 92
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 62
    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 63
    .local v2, "size":I
    if-gtz v2, :cond_f

    .line 64
    invoke-direct {p0}, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->stopDrawing()V

    .line 79
    :cond_e
    return-void

    .line 67
    :cond_f
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_e

    .line 68
    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/visualeffect/particlespace/particle/Particle;

    .line 70
    .local v0, "dot":Lcom/sec/android/visualeffect/particlespace/particle/Particle;
    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 71
    invoke-virtual {v0}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->move()V

    .line 72
    invoke-virtual {v0, p1}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->draw(Landroid/graphics/Canvas;)V

    .line 67
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 74
    :cond_31
    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 75
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e
.end method

.method public unlockDots()V
    .registers 4

    .prologue
    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 55
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->particleList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/visualeffect/particlespace/particle/Particle;

    iget v2, p0, Lcom/sec/android/visualeffect/particlespace/particle/ParticleEffect;->dotUnlockSpeed:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/sec/android/visualeffect/particlespace/particle/Particle;->unlock(F)V

    .line 54
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 57
    :cond_1a
    return-void
.end method
