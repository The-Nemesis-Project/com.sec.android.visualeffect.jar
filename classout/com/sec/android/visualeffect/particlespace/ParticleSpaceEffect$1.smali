.class Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$1;
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
    .line 138
    iput-object p1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimationMin:F
    invoke-static {v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$100(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F

    move-result v2

    const/high16 v0, 0x3f800000

    iget-object v3, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # getter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->pushAnimationMin:F
    invoke-static {v3}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$100(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)F

    move-result v3

    sub-float v3, v0, v3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    # setter for: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animationValue:F
    invoke-static {v1, v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$002(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;F)F

    .line 142
    iget-object v0, p0, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect$1;->this$0:Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;

    # invokes: Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->animateScale()V
    invoke-static {v0}, Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;->access$200(Lcom/sec/android/visualeffect/particlespace/ParticleSpaceEffect;)V

    .line 143
    return-void
.end method
