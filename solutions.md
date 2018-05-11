Question 4.

A bitcoin tumbler service is utilised to delink transactions from a particular input address. The purpose is to anonymise senders and receivers of
bitcoin by "cleaning" dirty coins and returning clean coins. However, this is not a full-proof method to gain anonymity proven through de-anonymization
protocols such as Taint analysis, amount analysis and timing sequence analysis. In an ideal scenario, where all inputters into the
tumbler transact the same amount (say 1 BTC), it is useless to conduct amount analysis

In this problem, amount analysis will suffice in partially deanonymyzing the transactions and finding a link between input address and output addresses.
A bitcoin tumbler will utilise fresh change address to deposit the clean bitcoin in order to break the link between input and output addresses.
Due to the nature of transactions, most people transact with different input amounts. This is replicated here with our four different
input addresses having varying amounts of bitcoins in the change address.

• 1MVXpgczazLvbtS8Nfp9v3Qpj4d8pUNXQM   - 0.025 BTC
• 135g5Es7VXvbaAkwzguv7q7xaSSTifav5H   - 0.05  BTC
• 1GcZjZnfQUCs9L9RoAFLdd8YET2WQWrDAz   - 0.01  BTC
• 1KGhtebk4Nr2zZSn2NaFepeNF6KyjxpPJZ   - 0.02  BTC

In this limited dataset, it is safe to say that output addresses will have close to the same amounts being transferred to them (minus a transaction
fee for the mixer service). Thus, by evaluating our four output addresses, we can link them to a relevant input by matching up output amounts to
the input amounts. Below are the output amounts to be matched :

• 18RwKzXtL5YGvFwa9BHrPRvqXLkdYWsGfp  - 0.00987
• 1MTbp4bFftessrbTTpM5SC5Ap1iKaMHrM7  - 0.02441339
• 1BCaztysy2paguXjuC8c652vckNMks69ce  - 0.01986549
• 13MUZ1Qk36LqExdcSRDZCxNRP1pcz1b5mT  - 0.04874

This is the core idea behind amount analysis. Below are pairs of linked addresses based on the closeness of their amount values.

• 1MVXpgczazLvbtS8Nfp9v3Qpj4d8pUNXQM   - 1MTbp4bFftessrbTTpM5SC5Ap1iKaMHrM7
• 135g5Es7VXvbaAkwzguv7q7xaSSTifav5H   - 13MUZ1Qk36LqExdcSRDZCxNRP1pcz1b5mT
• 1GcZjZnfQUCs9L9RoAFLdd8YET2WQWrDAz   - 18RwKzXtL5YGvFwa9BHrPRvqXLkdYWsGfp
• 1KGhtebk4Nr2zZSn2NaFepeNF6KyjxpPJZ   - 1BCaztysy2paguXjuC8c652vckNMks69ce


Paper Referenced : Research on Anonymization and De-anonymization in the Bitcoin System by QingChun ShenTu, JianPing Yu
