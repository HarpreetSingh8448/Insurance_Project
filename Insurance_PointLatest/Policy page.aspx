<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="Policy page.aspx.cs" Inherits="Insurance_PointLatest.Policy_page" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        body {
            background-color: #f0f8ff; 
        }
        #policy-container {
            width: 70%;
            margin: 80px auto;
            padding: 40px;
            background-color: #2c3e50; 
            color: #ecf0f1;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            font-family: Arial, sans-serif;
        }
        #policy-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #1abc9c;
        }
        .policy-card {
            background-color: #34495e;
            padding: 20px;
            margin: 15px 0;
            border-radius: 10px;
            cursor: pointer;
            transition: background 0.3s ease;
        }
        .policy-card:hover {
            background-color: #16a085;
        }
        .policy-card a {
            text-decoration: none;
            color: #1abc9c;
            display: block;
            font-weight: bold;
        }
        .policy-card h3 {
            margin: 0 0 10px;
            color: #1abc9c;
        }
        .policy-card p {
            margin: 5px 0 10px;
            color: #bdc3c7;
        }
    </style>

    <div id="policy-container">
        <h2>Our Life Insurance Policies</h2>
        
        <div class="policy-card">
            <h3>Term Insurance Plan</h3>
            <p>Term Insurance offers financial security for your family in case of unforeseen events. It provides high coverage at an affordable premium, ensuring your loved ones' financial stability.</p>
                <br />
             <h3> What is Term Insurance? </h3> 
            <p>
              Term insurance is a simple and cost-effective life insurance policy designed to provide financial security to your family in the event of your untimely demise. It offers a substantial life cover at affordable premiums, ensuring that your loved ones can meet their financial needs, such as household expenses, loan repayments, children’s education, and other commitments.Unlike traditional life insurance policies, term insurance does not have a maturity benefit unless a return-of-premium option is chosen. It purely serves as a financial safety net for your family.</p>

             <h3>Key Benefits of Term Insurance</h3>
              ✅ High Coverage at Affordable Premiums
             <p>Term plans provide extensive life coverage at lower premium rates, making them accessible for individuals across different income levels.</p>
              ✅ Financial Security for Your Family
          <p>    In case of an unfortunate event, the nominee receives the sum assured, ensuring financial stability for dependents.</p>

              ✅ Flexible Policy Terms
         <p>    You can choose the duration of coverage based on your needs, with policy terms ranging from 10 years to lifetime coverage.</p>

           <h3>Who Should Buy Term Insurance?</h3>
      <p>    Term insurance is ideal for individuals who:
            <br />
         ✔ Have dependents, such as a spouse, children, or aging parents.
            <br />

         ✔ Have financial liabilities, such as home loans, education loans, or personal loans.
            <br />

         ✔ Want to secure their family’s future in case of unforeseen circumstances.
            <br />

         ✔ Seek a cost-effective way to get high life coverage.
            <br />
          </p> 
            <br />

         <h3>Why Choose Our Term Insurance Plans?</h3>
            <p>
🔹 Trusted Insurance Provider: Reliable and customer-centric insurance solutions.
            <br />

🔹 Hassle-Free Online Application: Quick and easy policy issuance with minimal documentation.
            <br />

🔹 Claim Assistance: A dedicated support team to guide you through the claim process.
            <br />

🔹 Flexible Coverage Options: Choose from multiple plans tailored to your financial goals.
            <br />


Secure your family’s financial future today. Get a Term Insurance Plan that suits your needs!</p>
           
                                 <h5> <a href="Policy Detail.aspx">Buy Policy</a></h5>
        </div>

        <div class="policy-card">
            <h3>Whole Life Insurance</h3>
            <p>Whole Life Insurance ensures lifetime protection with guaranteed payouts. This plan builds wealth over time and provides financial security for your dependents.</p>
          <h3>  What is Whole Life Insurance? </h3>
<p>Whole life insurance is a permanent life insurance policy that provides coverage for the policyholder’s entire lifetime. Unlike term insurance, which covers a specific period, whole life insurance ensures that your loved ones receive financial protection regardless of when you pass away. Additionally, it includes a savings component that accumulates cash value over time, which can be accessed during your lifetime.
   <br />
This plan is ideal for individuals looking for a long-term financial safety net along with wealth accumulation benefits. </p>

<h3>Key Benefits of Whole Life Insurance</h3>
✅ Lifetime Coverage
Unlike term plans, whole life insurance offers coverage for the policyholder’s entire life, ensuring long-term financial security for dependents.
            <br />
✅ Guaranteed Death Benefit
Upon the policyholder’s passing, the nominee receives a guaranteed payout (sum assured), ensuring financial stability for their future needs.
            <br />
✅ Cash Value Growth
Whole life insurance policies build cash value over time, which can be used for loans, withdrawals, or even to pay premiums in later years.
            <br />
✅ Premium Payment Flexibility
Choose from flexible premium payment options:
            <br />
<h3>Who Should Buy Whole Life Insurance?</h3>
Whole life insurance is an ideal choice for individuals who:
            <br />
✔ Want lifelong financial security for their family.
            <br />
✔ Seek a long-term wealth-building option with cash value benefits.
            <br />
✔ Plan to leave behind a financial legacy for their heirs.
            <br />
✔ Want tax-efficient estate planning solutions.
            <br />

<h3>Why Choose Our Whole Life Insurance Plans?</h3>
🔹 Lifetime Protection: Enjoy financial security for your entire life.
            <br />
🔹 Cash Value Accumulation: Build wealth while ensuring insurance coverage.
            <br />
🔹 Flexible Payout Options: Choose how your family receives the benefits.
            <br />
🔹 Reliable & Hassle-Free Claims: Dedicated support for smooth claim processing.
            <br />
Ensure a secure future for your loved ones today with a Whole Life Insurance Plan!

         <h5>   <a href="Policy Detail.aspx">Buy Policy</a>  </h5>
        </div>

        <div class="policy-card">
            <h3>Child Insurance Plan</h3>
            <p>Child Insurance Plan helps secure your child's educational and future goals. With assured returns and flexible payout options, this plan supports your child's dreams.</p>
            <br />
          <h3>  What is Child Insurance?</h3>
<p>Child insurance is a specialized life insurance plan designed to secure your child's future by providing financial support for their education, career, and other life milestones. It combines life insurance coverage with investment or savings benefits, ensuring that your child’s dreams are never compromised, even in your absence.
    <br />
With a child insurance plan, you can systematically build a financial corpus for your child’s higher education, marriage, or other important expenses, while also ensuring a safety net for unforeseen circumstances.</p>

<h3>Key Benefits of Child Insurance </h3>
✅ Financial Security for Your Child
In case of an unfortunate event, the insurance ensures that your child receives the sum assured, helping them achieve their goals without financial worries.
            <br />
✅ Maturity Benefits & Wealth Creation
Child insurance policies come with a savings or investment component, allowing you to accumulate wealth over time to fund your child’s aspirations.
            <br />

✅ Premium Waiver Benefit
In case of the policyholder’s demise, all future premiums are waived, and the policy continues, ensuring uninterrupted benefits for the child.
            <br />

✅ Flexible Payout Options

Lump Sum Payout: A one-time payment to cover major expenses like education or marriage.
Regular Payouts: Periodic payouts at key milestones to support academic and personal growth.
            <br />

<h3>Who Should Buy Child Insurance?</h3>
Child insurance is ideal for parents who:
            <br />
✔ Want to secure their child’s education, marriage, or other future expenses.
            <br />

✔ Seek a disciplined savings approach for long-term financial planning.
            <br />

✔ Want financial protection in case of unforeseen circumstances.
            <br />

✔ Prefer an investment-linked plan to grow their savings while ensuring insurance coverage.
            <br />

<h3>Why Choose Our Child Insurance Plans?</h3>
🔹 Comprehensive Coverage: Ensures financial stability for your child’s future.
            <br />

🔹 Flexible Premium & Payout Options: Choose a plan that suits your financial goals.
            <br />

🔹 Guaranteed Protection: Your child’s future is secured, no matter what happens.
            <br />

🔹 Hassle-Free Claims Process: Quick and efficient claim settlement for peace of mind.
            <br />
Invest in your child’s future today with a secure and reliable Child Insurance Plan!
          <h5>  <a href="Policy Detail.aspx">Buy Policy</a> </h5>
        </div>

        <div class="policy-card">
            <h3>Retirement Plan</h3>
            <p>Retirement Plan ensures you enjoy a stress-free and financially stable retirement. It offers guaranteed monthly payouts and ensures your post-retirement goals are fulfilled.</p>
            <br />
            <h3>What is a Retirement Plan?</h3>

<p>A retirement plan is a financial product designed to help individuals build a secure and stable financial future after retirement. It ensures a steady flow of income, allowing you to maintain your lifestyle, cover medical expenses, and achieve post-retirement goals without financial stress.
    <br />
Retirement plans provide a combination of savings, investment, and insurance benefits, ensuring that you can enjoy a worry-free and independent life during your golden years.</p>

<h3>Key Benefits of a Retirement Plan</h3>
✅ Guaranteed Income After Retirement
            <br />
Receive a steady income stream during your post-retirement years to maintain financial stability and independence.
            <br />

✅ Wealth Accumulation for the Future
            <br />

Build a retirement corpus through regular savings and investments, ensuring financial security for yourself and your spouse.
            <br />
✅ Protection Against Inflation
            <br />

✅ Financial Security for Medical & Emergency Needs
            <br />

Ensure you have sufficient funds to cover healthcare and emergency expenses during your retirement years.
            <br />
<h3>Who Should Buy a Retirement Plan?</h3>
A retirement plan is ideal for individuals who:
            <br />
✔ Want to ensure a financially independent and comfortable retirement.
            <br />

✔ Seek a steady income source post-retirement.
            <br />

✔ Want to build a retirement corpus with tax-saving benefits.
            <br />
            
✔ Aim to secure their spouse’s financial future.
            <br />
<h3>Why Choose Our Retirement Plans?</h3>
🔹 Customized Retirement Solutions: Choose a plan that aligns with your financial goals.
            <br />

🔹 Guaranteed Pension Benefits: Enjoy a secure and stable post-retirement income.
            <br />

🔹 Flexible Premium & Payout Options: Tailored plans to suit your financial preferences.
            <br />

🔹 Trusted Insurance Provider: Reliable and customer-centric retirement solutions.
            <br />
Plan for a financially secure and worry-free retirement today with a smart Retirement Plan!
          <h5>  <a href="Policy Detail.aspx">Buy Policy</a></h5>
        </div>

        <div class="policy-card">
            <h3>Endowment Plan</h3>
            <p>Endowment Plan combines insurance and savings, ensuring financial protection while also providing maturity benefits if the insured survives the policy term.</p>
           <h3> What is an Endowment Plan?</h3>
<p>An endowment plan is a life insurance policy that combines savings and protection benefits. It helps policyholders build a financial corpus over a specific period while ensuring life cover. If the policyholder survives the policy term, a lump sum maturity benefit is provided. In case of an unfortunate event, the nominee receives the death benefit, ensuring financial security for the family.
            <br />
Endowment plans are ideal for individuals looking for disciplined savings while enjoying insurance coverage and financial stability.</p>

<h3>Key Benefits of an Endowment Plan</h3>
✅ Dual Benefit – Insurance & Savings
            <br />
Endowment plans provide financial security through life cover while helping you systematically save for future needs.
            <br />
✅ Maturity Benefit
            <br />

If the policyholder survives the policy term, a lump sum amount is paid as a maturity benefit, which can be used for financial goals like buying a house, children's education, or retirement planning.
            <br />

✅ Guaranteed Payouts
            <br />

Unlike market-linked plans, endowment policies offer assured returns, ensuring financial security regardless of market fluctuations.
            <br />

✅ Financial Protection for Your Family
            <br />

In case of the policyholder’s untimely demise, the nominee receives the sum assured along with any accrued bonuses.
            <br />

✅ Flexible Premium Payment Options
            <br />

Choose from single, limited, or regular premium payment options based on your financial preferences.
            <br />

✅ Tax Benefits
            <br />

Get tax deductions on premiums paid and tax-free maturity or death benefits under applicable tax laws.
            <br />
<h3>Who Should Buy an Endowment Plan?</h3>
An endowment plan is ideal for individuals who:
            <br />
✔ Seek a disciplined savings approach with guaranteed returns.
            <br />
✔ Want financial protection along with a maturity benefit.
            <br />

✔ Are planning for long-term goals like education, marriage, or retirement.
            <br />

✔ Prefer a risk-free investment option with assured payouts.
            <br />


<h3>Why Choose Our Endowment Plans?</h3>
🔹 Guaranteed Savings & Protection: Secure your financial future with a dual-benefit plan.
            <br />

🔹 Flexible Policy Terms: Choose a policy duration that aligns with your financial goals.
            <br />

🔹 Customizable Premium Options: Pay premiums as per your convenience.
            <br />

🔹 Reliable & Hassle-Free Claims Process: Ensuring peace of mind for you and your family.
            <br />


Plan for a secure financial future today with a smart Endowment Plan!
          <h5>  <a href="Policy Detail.aspx">Buy Policy</a></h5>
        </div>

        <div class="policy-card">
            <h3>Money Back Plan</h3>
            <p>Money Back Plan offers periodic returns along with life coverage. It's ideal for individuals seeking guaranteed payouts at regular intervals.</p>
            <h3>What is a Money Back Plan?</h3>
<p>A Money Back Plan is a unique life insurance policy that provides both life cover and periodic payouts during the policy term. Unlike traditional insurance plans that pay the benefits only at maturity, a money back plan ensures regular returns at predefined intervals. This makes it an excellent choice for individuals who want financial protection along with liquidity for short-term financial needs.
    <br />
If the policyholder survives the policy term, the remaining sum assured is paid as a maturity benefit. In case of an unfortunate event, the nominee receives the full sum assured, regardless of the payouts already made.</p>

<h3>Key Benefits of a Money Back Plan</h3>
✅ Regular Payouts During the Policy Term
            <br />
Get a percentage of the sum assured at regular intervals, ensuring liquidity for financial needs like education, loan repayments, or other expenses.
            <br />

✅ Guaranteed Maturity Benefit
            <br />

At the end of the policy term, the remaining sum assured along with bonuses (if applicable) is paid to the policyholder.
            <br />

✅ Life Cover with Financial Security
            <br />

In case of the policyholder’s demise during the policy term, the full sum assured is paid to the nominee, ensuring financial stability for the family.
            <br />

✅ Risk-Free Investment with Assured Returns
            <br />

Unlike market-linked investment plans, money back policies offer guaranteed payouts, making them a safe financial instrument.
            <br />

<h3>Who Should Buy a Money Back Plan?</h3>
A money back plan is ideal for individuals who:
            <br />

✔ Want a life insurance policy with periodic payouts for liquidity.
            <br />

✔ Need financial security along with steady cash inflows.
            <br />

✔ Seek a risk-free investment option with guaranteed returns.
            <br />

✔ Have short-term financial goals like children's education, travel, or loan repayment.
            <br />


<h3>Why Choose Our Money Back Plans?</h3>
🔹 Regular Income with Life Cover: Enjoy liquidity while ensuring your family’s financial security.
            <br />

🔹 Guaranteed Payouts & Maturity Benefits: Assured returns, regardless of market conditions.
            <br />

🔹 Flexible Policy Terms: Choose a plan duration that aligns with your financial needs.
            <br />

🔹 Hassle-Free Claims & Customer Support: Dedicated assistance to ensure a smooth experience.
            <br />

Secure your financial future with a Money Back Plan today!


         <h5>   <a href="Policy Detail.aspx">Buy Policy</a></h5>
        </div>
    </div>


    
</asp:Content>
