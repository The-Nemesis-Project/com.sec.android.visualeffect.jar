.class Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;
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
    .line 149
    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 152
    .local v0, "value":F
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimationMax:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$300(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F

    move-result v2

    mul-float/2addr v2, v0

    # setter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animationValue:F
    invoke-static {v1, v2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$002(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F

    .line 153
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # invokes: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animateScale()V
    invoke-static {v1}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$200(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapX:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$500(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F

    move-result v2

    mul-float/2addr v2, v0

    # setter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapX:F
    invoke-static {v1, v2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$402(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F

    .line 155
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget-object v2, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->releaseGapY:F
    invoke-static {v2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$700(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F

    move-result v2

    mul-float/2addr v2, v0

    # setter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->gapY:F
    invoke-static {v1, v2}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$602(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F

    .line 156
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$2;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # invokes: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animatePosition()V
    invoke-static {v1}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$800(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    .line 157
    return-void
.end method
