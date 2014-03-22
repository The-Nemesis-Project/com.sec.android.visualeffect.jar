.class Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;
.super Ljava/lang/Object;
.source "ParticleSpaceEffect.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;


# direct methods
.method constructor <init>(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 7
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const v4, 0x3e19999a

    .line 166
    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentX:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$900(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerX:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$1000(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F

    move-result v3

    sub-float v0, v2, v3

    .line 167
    .local v0, "targetX":F
    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->currentY:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$1100(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->centerY:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$1200(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F

    move-result v3

    sub-float v1, v2, v3

    .line 168
    .local v1, "targetY":F
    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$400(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F

    move-result v3

    sub-float v3, v0, v3

    mul-float/2addr v3, v4

    # += operator for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F
    invoke-static {v2, v3}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$416(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F

    .line 169
    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$600(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F

    move-result v3

    sub-float v3, v1, v3

    mul-float/2addr v3, v4

    # += operator for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F
    invoke-static {v2, v3}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$616(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F

    .line 170
    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$3;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # invokes: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animatePosition()V
    invoke-static {v2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$800(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    .line 171
    return-void
.end method
