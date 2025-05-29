# LLM Reasoning through Reinforcement Learning: A 2025 Compilation

**Date:** March 12, 2025

## Executive Summary

This report compiles recent research, repositories, and approaches for improving reasoning capabilities in Large Language Models (LLMs) through reinforcement learning (RL). The focus is on developments from 2025 and late 2024, with special attention to emerging techniques like Group Relative Policy Optimization (GRPO), Process Reinforcement through Implicit Rewards (PRIME), and other innovative approaches. This compilation prioritizes volume and recency over depth, serving as a comprehensive reference for researchers and practitioners in the field.

## Table of Contents

1. [Introduction](#introduction)
2. [Group Relative Policy Optimization (GRPO)](#group-relative-policy-optimization-grpo)
3. [Proximal Policy Optimization (PPO)](#proximal-policy-optimization-ppo)
4. [Process Reinforcement through Implicit Rewards (PRIME)](#process-reinforcement-through-implicit-rewards-prime)
5. [REINFORCE Leave-One-Out (RLOO)](#reinforce-leave-one-out-rloo)
6. [VinePPO](#vineppo)
7. [Direct Preference Optimization (DPO) Approaches](#direct-preference-optimization-dpo-approaches)
8. [Offline Reasoning Optimization (OREO)](#offline-reasoning-optimization-oreo)
9. [Frameworks and Tools](#frameworks-and-tools)
10. [Conclusions](#conclusions)
11. [References](#references)

## Introduction

Reasoning capabilities remain one of the most challenging frontiers for LLMs, with reinforcement learning emerging as a promising approach for teaching models how to tackle complex, multi-step problems. This report catalogs the latest developments in this rapidly evolving field, focusing on publications and repositories from 2025 and late 2024.

## Group Relative Policy Optimization (GRPO)

GRPO has emerged as a significant advancement in LLM reasoning training, particularly through DeepSeek's implementation.

- [**The Math Behind DeepSeek: A Deep Dive into Group Relative Policy Optimization (GRPO)**](https://medium.com/@sahin.samia/the-math-behind-deepseek-a-deep-dive-into-group-relative-policy-optimization-grpo-8a75007491ba) (January 2025)  
  Explains how GRPO is designed to enhance reasoning capabilities in LLMs, optimizing models by evaluating groups of responses relative to one another without requiring separate critic models.

- [**A vision researcher's guide to some RL stuff: PPO & GRPO**](https://yugeten.github.io/posts/2025/01/ppogrpo/) (January 31, 2025)  
  Comprehensive explanation of GRPO compared to PPO, highlighting how GRPO simplifies reinforcement learning by eliminating the need for a separate critic model, reducing memory and compute overhead by approximately 50%.

- [**Group Relative Policy Optimization (GRPO) Illustrated Breakdown**](https://epichka.com/blog/2025/grpo/) (2025)  
  A detailed breakdown of how GRPO works and why it represents a significant advancement in applying RL to language models.

- [**Post training an LLM for reasoning with GRPO in TRL**](https://huggingface.co/learn/cookbook/en/fine_tuning_llm_grpo_trl) (Hugging Face, 2025)  
  A practical tutorial on implementing GRPO using the TRL library, focusing on post-training techniques for enhancing reasoning capabilities.

- [**GRPO: Guided Reasoning and Planning Optimization**](https://medium.com/@nijesh-kanjinghat/grpo-guided-reasoning-and-planning-optimization-how-deepseek-is-advancing-llm-reasoning-b83d3245e105) (March 2025)  
  Explores how DeepSeek is advancing LLM reasoning through GRPO for multi-step reasoning, planning, and decision-making.

## Proximal Policy Optimization (PPO)

PPO continues to be a significant approach for LLM reasoning enhancement, with several new developments offering improvements to the core algorithm.

- [**VinePPO: Unlocking RL Potential For LLM Reasoning Through Refined Credit Assignment**](https://openreview.net/forum?id=5mJrGtXVwz) (2025)  
  Proposes VinePPO, addressing credit assignment challenges in PPO for reasoning tasks, achieving better performance with fewer gradient updates and less time.

- [**Understanding Reinforcement Learning in LLM Setting + OpenAI's PPO vs DeepSeek's GRPO**](https://medium.com/@rjusnba/understanding-reinforcement-learning-in-llm-setting-openais-ppo-vs-deepseek-s-grpo-code-baf7e84b8676) (February 2025)  
  Compares PPO and GRPO approaches in the context of LLM reasoning and alignment.

- [**Is DPO Superior to PPO for LLM Alignment? A Comprehensive Study**](https://arxiv.org/abs/2404.10719) (April 2024)  
  Finds that PPO tends to outperform DPO, especially when dealing with out-of-distribution data, though DPO remains popular due to implementation simplicity.

## Process Reinforcement through Implicit Rewards (PRIME)

PRIME represents an innovative approach to online reinforcement learning with process rewards.

- [**PRIME: An Open-Source Solution for Online Reinforcement Learning with Process Rewards**](https://www.marktechpost.com/2025/01/04/prime-an-open-source-solution-for-online-reinforcement-learning-with-process-rewards-to-advance-reasoning-abilities-of-language-models-beyond-imitation-or-distillation/) (January 2025)  
  Introduces PRIME, which employs implicit process reward modeling to enhance language model reasoning through online RL, enabling significant improvements through both online RL training and inference-time scaling.

- [**Process Reinforcement through Implicit Rewards (PRIME): A Scalable Machine Learning Framework**](https://www.marktechpost.com/2025/02/07/process-reinforcement-through-implicit-rewards-prime-a-scalable-machine-learning-framework-for-enhancing-reasoning-capabilities/) (February 2025)  
  Explains how PRIME provides dense rewards through implicit process reward modeling, addressing the sparsity issue in traditional RL for multi-step reasoning tasks.

- [**PRIME-RL GitHub Repository**](https://github.com/PRIME-RL/PRIME) (2025)  
  Open-source implementation of PRIME, providing a scalable RL solution for advanced reasoning of language models through implicit process rewards.

## REINFORCE Leave-One-Out (RLOO)

RLOO offers a simpler yet effective approach to RL for language models.

- [**Back to Basics: Revisiting REINFORCE Style Optimization for Learning from Human Feedback in LLMs**](https://arxiv.org/html/2402.14740v1) (February 2024)  
  Introduces RLOO as a multi-sample extension of REINFORCE, showing that it makes better use of online samples than alternatives while presenting higher robustness to noise and KL penalty.

- [**REINFORCE: A Simple and Effective Approach to LLM Alignment**](https://medium.com/@ayoubkirouane3/reinforce-a-simple-and-effective-approach-to-llm-alignment-75c7ac0fdf9d) (June 2024)  
  Explains how RLOO enhances sample efficiency by utilizing multiple online samples to construct an unbiased baseline for each sample, effectively reducing variance and improving learning.

## VinePPO

VinePPO represents a significant advancement in credit assignment for reasoning tasks.

- [**VinePPO GitHub Repository**](https://github.com/McGill-NLP/VinePPO) (2024)  
  Implementation of VinePPO, which leverages the flexibility of language environments to compute unbiased Monte Carlo-based estimates, bypassing the need for large value networks in reasoning-heavy LLM tasks.

- [**VinePPO: Unlocking RL Potential For LLM Reasoning Through Refined Credit Assignment**](https://arxiv.org/abs/2410.01679) (2024)  
  Reveals significant shortcomings of value networks in reasoning-heavy tasks and proposes VinePPO as a solution, outperforming PPO and other RL-free baselines with fewer updates and less time.

## Direct Preference Optimization (DPO) Approaches

DPO and its variants continue to evolve for LLM reasoning tasks.

- [**Flow-DPO: Improving LLM Mathematical Reasoning through Online Multi-Agent Learning**](https://openreview.net/forum?id=uwagVHmyNA) (2025)  
  Introduces a novel approach to produce high-quality reasoning traces for LLM fine-tuning using online learning Flows, employing incremental output production where component LLMs collaboratively construct solutions.

- [**Preference Tuning LLMs: PPO, DPO, GRPO — A Simple Guide**](https://anukriti-ranjan.medium.com/preference-tuning-llms-ppo-dpo-grpo-a-simple-guide-135765c87090) (February 2025)  
  Explains how GRPO builds on PPO to make RLHF training leaner and faster for complex reasoning tasks, comparing it with DPO.

- [**From RL to LLMs: Optimizing AI with GRPO, PPO, and DPO for Better Fine-Tuning**](https://www.analyticsvidhya.com/blog/2025/02/llm-optimization/) (February 2025)  
  Discusses how DeepSeek's GRPO eliminated the need for explicit reward modeling by directly optimizing preference rankings, comparing it with PPO and DPO approaches.

## Offline Reasoning Optimization (OREO)

OREO represents an innovative approach to offline RL for multi-step reasoning.

- [**Offline Reinforcement Learning for LLM Multi-Step Reasoning**](https://huggingface.co/papers/2412.16145) (December 2024)  
  Proposes OREO (Offline Reasoning Optimization), addressing limitations of DPO for multi-step reasoning tasks, showing better credit assignment for complex reasoning.

- [**Meet OREO (Offline REasoning Optimization)**](https://www.marktechpost.com/2024/12/23/meet-oreo-offline-reasoning-optimization-an-offline-reinforcement-learning-method-for-enhancing-llm-multi-step-reasoning/) (December 2024)  
  Explains how OREO is specifically designed to address the shortcomings of existing methods in improving multi-step reasoning for LLMs.

## Frameworks and Tools

Several frameworks and tools have emerged to facilitate LLM reasoning through RL.

- [**SimpleRL-reason GitHub Repository**](https://github.com/hkust-nlp/simpleRL-reason) (2025)  
  A simple reinforcement learning recipe to improve models' reasoning abilities, similar to DeepSeek-R1 but using PPO rather than GRPO, achieving strong results with limited data.

- [**OpenRLHF: An Easy-to-use, Scalable and High-performance RLHF Framework**](https://github.com/OpenRLHF/OpenRLHF) (2025)  
  A framework enabling 70B+ PPO full tuning and iterative DPO for large language models, with support for LoRA, RingAttention, and RFT.

- [**LLM-RLHF-Tuning-with-PPO-and-DPO**](https://github.com/raghavc/LLM-RLHF-Tuning-with-PPO-and-DPO) (2025)  
  Comprehensive toolkit for RLHF training, featuring instruction fine-tuning, reward model training, and support for PPO and DPO algorithms.

## Conclusions

The field of LLM reasoning through reinforcement learning is rapidly evolving, with new techniques and approaches emerging continually. GRPO, PRIME, VinePPO, and Flow-DPO represent particularly promising directions, each addressing different aspects of the reasoning challenge. As these approaches mature and more research is conducted, we can expect significant improvements in LLM reasoning capabilities in the coming years.

## References

1. Sahin Ahmed. (January 2025). *The Math Behind DeepSeek: A Deep Dive into Group Relative Policy Optimization (GRPO)*. Medium. https://medium.com/@sahin.samia/the-math-behind-deepseek-a-deep-dive-into-group-relative-policy-optimization-grpo-8a75007491ba
2. Yuge Shi. (January 2025). *A vision researcher's guide to some RL stuff: PPO & GRPO*. https://yugeten.github.io/posts/2025/01/ppogrpo/
3. Ebrahim Pichka. (2025). *Group Relative Policy Optimization (GRPO) Illustrated Breakdown*. https://epichka.com/blog/2025/grpo/
4. Hugging Face. (2025). *Post training an LLM for reasoning with GRPO in TRL*. https://huggingface.co/learn/cookbook/en/fine_tuning_llm_grpo_trl
5. PRIME-RL. (2025). *PRIME: Scalable RL solution for advanced reasoning of language models*. GitHub. https://github.com/PRIME-RL/PRIME
6. McGill-NLP. (2024). *VinePPO: Unlocking RL Potential For LLM Reasoning Through Refined Credit Assignment*. GitHub. https://github.com/McGill-NLP/VinePPO
7. OpenRLHF. (2025). *An Easy-to-use, Scalable and High-performance RLHF Framework*. GitHub. https://github.com/OpenRLHF/OpenRLHF
8. HKUST-NLP. (2025). *SimpleRL-reason: A simple reinforcement learning recipe to improve models' reasoning abilities*. GitHub. https://github.com/hkust-nlp/simpleRL-reason
9. Wang et al. (December 2024). *Offline Reinforcement Learning for LLM Multi-Step Reasoning*. arXiv. https://arxiv.org/abs/2412.16145
10. MarkTechPost. (January 2025). *PRIME: An Open-Source Solution for Online Reinforcement Learning with Process Rewards*. https://www.marktechpost.com/2025/01/04/prime-an-open-source-solution-for-online-reinforcement-learning-with-process-rewards-to-advance-reasoning-abilities-of-language-models-beyond-imitation-or-distillation/
11. MarkTechPost. (February 2025). *Process Reinforcement through Implicit Rewards (PRIME): A Scalable Machine Learning Framework*. https://www.marktechpost.com/2025/02/07/process-reinforcement-through-implicit-rewards-prime-a-scalable-machine-learning-framework-for-enhancing-reasoning-capabilities/
12. Anukriti Ranjan. (February 2025). *Preference Tuning LLMs: PPO, DPO, GRPO — A Simple Guide*. Medium. https://anukriti-ranjan.medium.com/preference-tuning-llms-ppo-dpo-grpo-a-simple-guide-135765c87090
13. Analytics Vidhya. (February 2025). *From RL to LLMs: Optimizing AI with GRPO, PPO, and DPO for Better Fine-Tuning*. https://www.analyticsvidhya.com/blog/2025/02/llm-optimization/
14. Nijesh Kanjinghat. (March 2025). *GRPO: Guided Reasoning and Planning Optimization*. Medium. https://medium.com/@nijesh-kanjinghat/grpo-guided-reasoning-and-planning-optimization-how-deepseek-is-advancing-llm-reasoning-b83d3245e105
15. MarkTechPost. (December 2024). *Meet OREO (Offline REasoning Optimization)*. https://www.marktechpost.com/2024/12/23/meet-oreo-offline-reasoning-optimization-an-offline-reinforcement-learning-method-for-enhancing-llm-multi-step-reasoning/
16. Raghavc. (2025). *LLM-RLHF-Tuning-with-PPO-and-DPO*. GitHub. https://github.com/raghavc/LLM-RLHF-Tuning-with-PPO-and-DPO
17. Wang et al. (2024). *Flow-DPO: Improving LLM Mathematical Reasoning through Online Multi-Agent Learning*. OpenReview. https://openreview.net/forum?id=uwagVHmyNA
18. Is DPO Superior to PPO for LLM Alignment? A Comprehensive Study. (2024). arXiv. https://arxiv.org/abs/2404.10719
19. Back to Basics: Revisiting REINFORCE Style Optimization for Learning from Human Feedback in LLMs. (2024). arXiv. https://arxiv.org/html/2402.14740v1
20. VinePPO: Unlocking RL Potential For LLM Reasoning Through Refined Credit Assignment. (2024). OpenReview. https://openreview.net/forum?id=5mJrGtXVwz